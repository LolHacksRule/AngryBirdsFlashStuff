package §##K§
{
   import §%$!§.§,"n§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §[V§ extends EventDispatcher
   {
       
      
      private var §?!2§:§5$!§;
      
      public function §[V§(param1:String, param2:String, param3:int)
      {
         super();
         this.§+"T§(param1,param2,param3);
      }
      
      private function §+"T§(param1:String, param2:String, param3:int) : void
      {
         if(this.§?!2§)
         {
            return;
         }
         this.§?!2§ = new §5$!§();
         this.§?!2§.addEventListener(Event.COMPLETE,this.§#"9§);
         this.§?!2§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/draw/submitentry/" + param1 + "/" + param2 + "/" + param3);
         this.§?!2§.load(_loc4_);
      }
      
      private function §#"9§(param1:Event) : void
      {
         this.§?!2§.removeEventListener(Event.COMPLETE,this.§#"9§);
         var _loc2_:Object = this.§?!2§.data;
         if(_loc2_.errorMessage && _loc2_.errorMessage is String)
         {
            throw new Error("SubmitEntryToDraw error:" + _loc2_.errorMessage);
         }
         dispatchEvent(new §9#]§(§9#]§.§,$§,false,false,_loc2_));
      }
      
      public function get dataModel() : §,"n§
      {
         return §8G§.§%#S§.dataModel;
      }
   }
}
