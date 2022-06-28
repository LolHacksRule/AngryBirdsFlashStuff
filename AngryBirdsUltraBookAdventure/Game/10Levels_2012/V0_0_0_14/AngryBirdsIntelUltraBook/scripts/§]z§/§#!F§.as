package §]z§
{
   import §4[§.§-w§;
   import §4[§.§3!G§;
   import §4[§.§>!P§;
   import §4[§.§?O§;
   import §6z§.§[g§;
   import §>§.§[0§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §#!F§ extends §`V§
   {
      
      public static var §8%§:String;
      
      public static var §85§:Boolean = false;
      
      public static var §+`§:Dictionary = new Dictionary();
       
      
      private var §2C§:Loader;
      
      private var §+7§:§1!?§;
      
      public function §#!F§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§super§);
      }
      
      private function §6D§(param1:Class) : §1!?§
      {
         if(!§+`§[param1])
         {
            §+`§[param1] = [];
         }
         var _loc2_:Array = §+`§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §68§(param1:§1!?§) : void
      {
         var _loc2_:Class = Object(this.§+7§).constructor;
         if(!§+`§[_loc2_])
         {
            §+`§[_loc2_] = [];
         }
         §+`§[_loc2_].push(param1);
      }
      
      private function §^h§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§%"§).constructor)
         {
            case §-w§:
               _loc1_ = §%!r§;
               break;
            case §3!G§:
               _loc1_ = §-D§;
               break;
            case §>!P§:
               _loc1_ = §]!G§;
         }
         if(!_loc1_)
         {
            §[g§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§+7§ ? Object(this.§+7§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§+7§)
            {
               this.§68§(removeChild(this.§+7§) as §1!?§);
            }
            this.§+7§ = addChild(this.§6D§(_loc1_)) as §1!?§;
         }
         this.§+7§.data = this.§%"§;
      }
      
      private function §super§(param1:MouseEvent) : void
      {
         if(this.§%"§ && this.§%"§ is §3!G§)
         {
            §3!Y§.scrollerSprite.dispatchEvent(new §[0§(§[0§.§3n§,data as §?O§));
         }
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§^h§();
         }
      }
      
      public function get §%"§() : §?O§
      {
         return data as §?O§;
      }
   }
}
