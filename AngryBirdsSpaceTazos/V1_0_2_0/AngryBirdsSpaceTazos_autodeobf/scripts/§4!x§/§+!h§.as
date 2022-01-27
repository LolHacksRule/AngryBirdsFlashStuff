package §4!x§
{
   import §""%§.§#`§;
   import §'#§.§^4§;
   import §6"6§.§40§;
   import §]!M§.§'`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §+!h§ extends EventDispatcher implements §`[§
   {
       
      
      public function §+!h§()
      {
         super();
      }
      
      public function §2"'§() : void
      {
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:String = §40§.§1"$§.id;
         var _loc5_:String = §^4§.§<"B§.§+!P§();
         var _loc6_:Object = {
            "type":"resendVerification",
            "id":_loc4_,
            "language":_loc5_
         };
         new §#`§(_loc6_,§^"=§.§^"3§ + "resendVerification",this,§#`§.§-n§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:§'`§ = null;
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.result && _loc2_.result == "ok")
         {
            _loc3_ = new §'`§(§'`§.§2! §);
            dispatchEvent(_loc3_);
         }
         else
         {
            _loc3_ = new §'`§(§'`§.§8!r§);
            dispatchEvent(_loc3_);
         }
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
   }
}
