package §9!e§
{
   import §-N§.§=!]§;
   import §3!S§.§%s§;
   import §7q§.§"L§;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   
   public class §%w§
   {
      
      public static const §`J§:String = "CutScene_Type_Intro";
      
      public static const §5Y§:String = "CutScene_Type_Outro";
      
      public static const §&h§:String = "CutScene_Type_Final_Outro";
       
      
      private var §0<§:§7!f§;
      
      private var §&!H§:String;
      
      private var §<!g§:Vector.<§<!>§>;
      
      private var §7!n§:Number;
      
      private var §`!$§:Number;
      
      private var §5!T§:Number;
      
      private var §7X§:Number;
      
      private var §5H§:Sprite;
      
      private var §5T§:Boolean = true;
      
      private var §;!C§:uint;
      
      private var §#!q§:Boolean;
      
      private var §2"2§:§"L§;
      
      private var §1!W§:§"L§;
      
      public function §%w§(param1:Object, param2:String)
      {
         var _loc3_:§<!>§ = null;
         var _loc4_:Object = null;
         this.§<!g§ = new Vector.<§<!>§>();
         super();
         this.§7!n§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§&!H§ = §`J§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§&!H§ = §5Y§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§<!N§(_loc4_);
               if(_loc3_)
               {
                  this.§<!g§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§<!g§)
            {
               if(_loc3_ is §+!y§)
               {
                  (_loc3_ as §+!y§).setSize(this.§5!T§,this.§7X§);
                  (_loc3_ as §+!y§).§1k§ = this.§5T§;
               }
               else if(_loc3_ is §4&§)
               {
                  (_loc3_ as §4&§).setSize(this.§5!T§,this.§7X§);
                  (_loc3_ as §4&§).§=3§ = this.§5T§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§5H§;
      }
      
      private function §<!N§(param1:Object) : §<!>§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §<!>§.§8C§:
               return new §4&§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §<!>§.§,'§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §+!y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §<!>§.§2v§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §2[§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §<!>§.§2!`§:
               return new §+!X§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §<!>§.END:
               this.§`!$§ = param1.time * 1000;
               break;
            case §<!>§.§8"#§:
               this.§5!T§ = param1.width;
               this.§7X§ = param1.height;
               break;
            case §<!>§.§'!f§:
               this.§5T§ = false;
               break;
            case §<!>§.§=^§:
               this.§5T§ = true;
               break;
            case §<!>§.§7!<§:
               this.§;!C§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§5H§)
         {
            this.§5H§.dispose();
            this.§5H§ = null;
         }
         this.§<!g§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§5H§)
         {
            this.§5H§ = new Sprite();
         }
         this.§7!n§ += param1;
         var _loc2_:int = this.§<!g§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§<!g§[_loc2_].update(this.§7!n§,this.§5H§,this.§0<§))
            {
               this.§<!g§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§"w§();
         this.§[o§();
         this.§8U§();
         return this.§7!n§ < this.§`!$§;
      }
      
      private function §8U§() : void
      {
         var _loc1_:int = §=!]§.§@§.§-'§.height;
         var _loc2_:Number = §%s§.§,!=§;
         var _loc3_:Number = §%s§.§-=§;
         var _loc4_:int = (_loc1_ - this.§7X§ * _loc2_) / _loc2_;
         this.§5H§.y = _loc4_ >> 1;
      }
      
      private function §"w§() : void
      {
         §=!]§.§@§.color = this.§;!C§;
      }
      
      private function §[o§() : void
      {
         if(this.§#!q§)
         {
            return;
         }
         var _loc1_:Sprite = this.§5H§.getChildByName(§4&§.§0g§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§#!q§ = true;
      }
      
      public function clone(param1:§7!f§) : §%w§
      {
         var _loc3_:§<!>§ = null;
         var _loc2_:§%w§ = new §%w§(null,null);
         for each(_loc3_ in this.§<!g§)
         {
            _loc2_.§<!g§.push(_loc3_.clone());
         }
         _loc2_.§7!n§ = this.§7!n§;
         _loc2_.§`!$§ = this.§`!$§;
         _loc2_.§5!T§ = this.§5!T§;
         _loc2_.§7X§ = this.§7X§;
         _loc2_.§5T§ = this.§5T§;
         _loc2_.§;!C§ = this.§;!C§;
         _loc2_.§&!H§ = this.§&!H§;
         _loc2_.§0<§ = param1;
         return _loc2_;
      }
      
      public function get §5!D§() : String
      {
         return this.§&!H§;
      }
      
      public function set §5!D§(param1:String) : void
      {
         this.§&!H§ = param1;
      }
   }
}
