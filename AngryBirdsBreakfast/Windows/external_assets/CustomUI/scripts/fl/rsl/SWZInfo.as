package fl.rsl
{
   import flash.net.URLRequest;
   
   public class SWZInfo extends RSLInfo
   {
       
      
      protected var _digest:String;
      
      public function SWZInfo(param1:String)
      {
         super();
         this._digest = param1;
      }
      
      public function get digest() : String
      {
         return this._digest;
      }
      
      override protected function getNextRequest() : URLRequest
      {
         var _loc1_:URLRequest = super.getNextRequest();
         if(_loc1_ != null && this._digest != null && this._digest.length > 0 && _loc1_.url.substr(-4).toLowerCase() != ".swf" && _loc1_.hasOwnProperty("digest"))
         {
            _loc1_.digest = this._digest;
         }
         return _loc1_;
      }
   }
}
