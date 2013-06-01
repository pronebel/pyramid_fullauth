<%inherit file="pyramid_fullauth:resources/templates/layout.mako" />

<h1>Recover your password</h1>
<div class="row-fluid">
    <div class="span2"></div>
    <div class="span8">
        % if not status:
            <div class="alert alert-error">Error! ${msg}</div>
        % endif
        <form class="form-horizontal" name="reset_password" method="POST" action="${request.current_route_path()}">
            <fieldset>
                <div class="control-group">
                    <label class="control-label" for="reset[email]">Your e-mail address:</label>
                    <div class="controls">
                        <input type="email" placeholder="username@hostname.com" name="email" id="reset[email]"/>
                        <input type="hidden" name="token" value="${token}" />
                    </div>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-large">Reset Password</button>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="span2"></div>
</div>

