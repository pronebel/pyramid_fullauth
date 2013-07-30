# -*- coding: utf-8 -*-


class DeleteException(Exception):

    '''
        Exception risen when the user can't be deleted
    '''
    pass


class ValidateError(ValueError):

    '''
        Base of every validate error in pyramid_fullauth
    '''
    pass


class EmptyError(ValidateError):

    '''
        Thrown whenever user is trying to set empty value
    '''
    pass


class ShortPasswordError(ValidateError):

    '''
    Thrown when password doesn't meet the length requirement
    '''
    pass


class PasswordConfirmMismatchError(ValidateError):

    '''
        Thrown when there's a mismatch with cpassword_confirm
    '''
    pass


class EmailErrorValidation(ValidateError):

    '''
        Exception thwon, when there's incorrect email provided
    '''
    pass
