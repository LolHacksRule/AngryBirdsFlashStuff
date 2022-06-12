package §=E§
{
   import §-n§.§!h§;
   import §[x§.§%3§;
   import §^!U§.§!8§;
   import §^!U§.§"B§;
   import §^!U§.§,J§;
   import §^!U§.§2!M§;
   import §^!U§.§39§;
   import §^!U§.§default§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §[[§ extends §0"1§
   {
      
      public static var §+"L§:String;
      
      public static var §-L§:Boolean = false;
      
      public static var §+G§:Dictionary = new Dictionary();
       
      
      private var §?"<§:Loader;
      
      private var §4x§:§"<§;
      
      public function §[[§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§#!_§);
      }
      
      private function §0a§(param1:Class) : §"<§
      {
         if(!§+G§[param1])
         {
            §+G§[param1] = [];
         }
         var _loc2_:Array = §+G§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §!"?§(param1:§"<§) : void
      {
         var _loc2_:Class = Object(this.§4x§).constructor;
         if(!§+G§[_loc2_])
         {
            §+G§[_loc2_] = [];
         }
         §+G§[_loc2_].push(param1);
      }
      
      private function §""1§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§,!B§).constructor)
         {
            case §default§:
               _loc1_ = §]",§;
               break;
            case §"B§:
               _loc1_ = §6!8§;
               break;
            case §!8§:
               _loc1_ = §;!q§;
               break;
            case §,J§:
               _loc1_ = § in§;
               break;
            case §39§:
               _loc1_ = §5!l§;
         }
         if(!_loc1_)
         {
            §%3§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§4x§ ? Object(this.§4x§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§4x§)
            {
               this.§!"?§(removeChild(this.§4x§) as §"<§);
            }
            this.§4x§ = addChild(this.§0a§(_loc1_)) as §"<§;
         }
         this.§4x§.data = this.§,!B§;
      }
      
      private function §#!_§(param1:MouseEvent) : void
      {
         if(this.§,!B§ && this.§,!B§ is §"B§)
         {
            §#";§.scrollerSprite.dispatchEvent(new §!h§(§!h§.§>!0§,data as §2!M§));
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
            this.§""1§();
         }
      }
      
      public function get §,!B§() : §2!M§
      {
         return data as §2!M§;
      }
      
      public function get §1'§() : §"<§
      {
         return this.§4x§;
      }
   }
}
