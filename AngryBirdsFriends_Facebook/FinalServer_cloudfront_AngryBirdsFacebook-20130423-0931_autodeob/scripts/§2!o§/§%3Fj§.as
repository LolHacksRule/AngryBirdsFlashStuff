package §2!o§
{
   import §+!c§.§;!=§;
   import §,l§.§ !Q§;
   import §,l§.§!"T§;
   import §,l§.§"6§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§<"W§;
   import §;!d§.§6"L§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?j§ extends §2"3§
   {
      
      public static var §1"[§:String;
      
      public static var §?`§:Boolean = false;
      
      public static var §2U§:Dictionary = new Dictionary();
       
      
      private var §2!H§:Loader;
      
      private var §&"-§:§`2§;
      
      public function §?j§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§""4§);
      }
      
      private function §<!K§(param1:Class) : §`2§
      {
         if(!§2U§[param1])
         {
            §2U§[param1] = [];
         }
         var _loc2_:Array = §2U§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §=I§(param1:§`2§) : void
      {
         var _loc2_:Class = Object(this.§&"-§).constructor;
         if(!§2U§[_loc2_])
         {
            §2U§[_loc2_] = [];
         }
         §2U§[_loc2_].push(param1);
      }
      
      private function §#o§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§0!&§).constructor)
         {
            case §<"W§:
               _loc1_ = §]!O§;
               break;
            case §!"T§:
               _loc1_ = §6!6§;
               break;
            case §"6§:
               _loc1_ = §7!Z§;
               break;
            case §1U§:
               _loc1_ = §[!$§;
               break;
            case § !Q§:
               _loc1_ = §'"D§;
         }
         if(!_loc1_)
         {
            §;!=§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§&"-§ ? Object(this.§&"-§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§&"-§)
            {
               this.§=I§(removeChild(this.§&"-§) as §`2§);
            }
            this.§&"-§ = addChild(this.§<!K§(_loc1_)) as §`2§;
         }
         this.§&"-§.data = this.§0!&§;
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         if(this.§0!&§ && this.§0!&§ is §!"T§)
         {
            §+! §.scrollerSprite.dispatchEvent(new §6"L§(§6"L§.§ !1§,data as §#!>§));
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
            this.§#o§();
         }
      }
      
      public function get §0!&§() : §#!>§
      {
         return data as §#!>§;
      }
      
      public function get §!P§() : §`2§
      {
         return this.§&"-§;
      }
   }
}
