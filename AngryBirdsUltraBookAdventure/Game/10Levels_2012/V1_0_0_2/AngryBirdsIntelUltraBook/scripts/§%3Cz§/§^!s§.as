package §<z§
{
   import §6!M§.§-!?§;
   import §6!M§.§4W§;
   import §6!M§.§7!m§;
   import §6!M§.§9!d§;
   import §<e§.§ &§;
   import §^_§.§!>§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^!s§ extends §#h§
   {
      
      public static var §-!1§:String;
      
      public static var §^i§:Boolean = false;
      
      public static var §<!?§:Dictionary = new Dictionary();
       
      
      private var §`!u§:Loader;
      
      private var §8>§:§1S§;
      
      public function §^!s§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§]!E§);
      }
      
      private function §]!Y§(param1:Class) : §1S§
      {
         if(!§<!?§[param1])
         {
            §<!?§[param1] = [];
         }
         var _loc2_:Array = §<!?§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §"B§(param1:§1S§) : void
      {
         var _loc2_:Class = Object(this.§8>§).constructor;
         if(!§<!?§[_loc2_])
         {
            §<!?§[_loc2_] = [];
         }
         §<!?§[_loc2_].push(param1);
      }
      
      private function §?y§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§+V§).constructor)
         {
            case §-!?§:
               _loc1_ = §=!1§;
               break;
            case §4W§:
               _loc1_ = §8!9§;
               break;
            case §7!m§:
               _loc1_ = §%!c§;
         }
         if(!_loc1_)
         {
            §!>§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§8>§ ? Object(this.§8>§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§8>§)
            {
               this.§"B§(removeChild(this.§8>§) as §1S§);
            }
            this.§8>§ = addChild(this.§]!Y§(_loc1_)) as §1S§;
         }
         this.§8>§.data = this.§+V§;
      }
      
      private function §]!E§(param1:MouseEvent) : void
      {
         if(this.§+V§ && this.§+V§ is §4W§)
         {
            §"!^§.scrollerSprite.dispatchEvent(new § &§(§ &§.§+!j§,data as §9!d§));
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
            this.§?y§();
         }
      }
      
      public function get §+V§() : §9!d§
      {
         return data as §9!d§;
      }
   }
}
