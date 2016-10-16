{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedNumber
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedNumber(..),
        gTypeSVGAnimatedNumber)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: SVGAnimatedNumber -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedNumber -> Float -> m ()
setBaseVal self val = liftIO (js_setBaseVal (self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.baseVal Mozilla SVGAnimatedNumber.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedNumber -> m Float
getBaseVal self = liftIO (js_getBaseVal (self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumber.animVal Mozilla SVGAnimatedNumber.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedNumber -> m Float
getAnimVal self = liftIO (js_getAnimVal (self))