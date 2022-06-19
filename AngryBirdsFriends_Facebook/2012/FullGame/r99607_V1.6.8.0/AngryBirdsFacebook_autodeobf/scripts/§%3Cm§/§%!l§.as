package §<m§
{
   import § !§.§?N§;
   import §0!?§.§'!$§;
   import §2!,§.§!Q§;
   import §2!,§.§%!j§;
   import §2!,§.§3!S§;
   import §2!,§.§4!7§;
   import §2!,§.§9"$§;
   import §2!,§.§=n§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §%!l§ extends §,0§
   {
      
      public static var §]!z§:String;
      
      public static var §3R§:Boolean = false;
      
      public static var §,"§:Dictionary = new Dictionary();
       
      
      private var §^t§:Loader;
      
      private var §7!h§:§"b§;
      
      public function §%!l§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§if§);
      }
      
      private function §&! §(param1:Class) : §"b§
      {
         if(!§,"§[param1])
         {
            §,"§[param1] = [];
         }
         var _loc2_:Array = §,"§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §'7§(param1:§"b§) : void
      {
         var _loc2_:Class = Object(this.§7!h§).constructor;
         if(!§,"§[_loc2_])
         {
            §,"§[_loc2_] = [];
         }
         §,"§[_loc2_].push(param1);
      }
      
      private function §"Y§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§7I§).constructor)
         {
            case §9"$§:
               _loc1_ = §[$§;
               break;
            case §4!7§:
               _loc1_ = §]!K§;
               break;
            case §3!S§:
               _loc1_ = §9O§;
               break;
            case §!Q§:
               _loc1_ = §4>§;
               break;
            case §%!j§:
               _loc1_ = §&Y§;
         }
         if(!_loc1_)
         {
            §'!$§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§7!h§ ? Object(this.§7!h§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§7!h§)
            {
               this.§'7§(removeChild(this.§7!h§) as §"b§);
            }
            this.§7!h§ = addChild(this.§&! §(_loc1_)) as §"b§;
         }
         this.§7!h§.data = this.§7I§;
      }
      
      private function §if§(param1:MouseEvent) : void
      {
         if(this.§7I§ && this.§7I§ is §4!7§)
         {
            §;"<§.scrollerSprite.dispatchEvent(new §?N§(§?N§.§,7§,data as §=n§));
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
            this.§"Y§();
         }
      }
      
      public function get §7I§() : §=n§
      {
         return data as §=n§;
      }
      
      public function get §6!,§() : §"b§
      {
         return this.§7!h§;
      }
   }
}
