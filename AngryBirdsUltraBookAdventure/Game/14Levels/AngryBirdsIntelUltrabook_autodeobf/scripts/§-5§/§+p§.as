package §-5§
{
   import §1!B§.§<m§;
   import §4H§.§%Q§;
   import §4H§.§4!R§;
   import §4H§.§4!k§;
   import §4H§.§9?§;
   import §@! §.§[! §;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+p§ extends §8!g§
   {
      
      public static var §!!I§:String;
      
      public static var §'!I§:Boolean = false;
      
      public static var §0!P§:Dictionary = new Dictionary();
       
      
      private var §,!a§:Loader;
      
      private var §;@§:§ !<§;
      
      public function §+p§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§!]§);
      }
      
      private function §+o§(param1:Class) : § !<§
      {
         if(!§0!P§[param1])
         {
            §0!P§[param1] = [];
         }
         var _loc2_:Array = §0!P§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §"!b§(param1:§ !<§) : void
      {
         var _loc2_:Class = Object(this.§;@§).constructor;
         if(!§0!P§[_loc2_])
         {
            §0!P§[_loc2_] = [];
         }
         §0!P§[_loc2_].push(param1);
      }
      
      private function §?!X§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§6§).constructor)
         {
            case §9?§:
               _loc1_ = §?[§;
               break;
            case §%Q§:
               _loc1_ = §#j§;
               break;
            case §4!k§:
               _loc1_ = §"!9§;
         }
         if(!_loc1_)
         {
            §<m§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§;@§ ? Object(this.§;@§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§;@§)
            {
               this.§"!b§(removeChild(this.§;@§) as § !<§);
            }
            this.§;@§ = addChild(this.§+o§(_loc1_)) as § !<§;
         }
         this.§;@§.data = this.§6§;
      }
      
      private function §!]§(param1:MouseEvent) : void
      {
         if(this.§6§ && this.§6§ is §%Q§)
         {
            §%>§.scrollerSprite.dispatchEvent(new §[! §(§[! §.§4!&§,data as §4!R§));
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
            this.§?!X§();
         }
      }
      
      public function get §6§() : §4!R§
      {
         return data as §4!R§;
      }
   }
}
