package §?_§
{
   import §,"&§.§9q§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.§&!D§;
   import §7!8§.Sprite;
   
   public class §>",§
   {
      
      public static const §=!5§:String = "CutScene_Type_Intro";
      
      public static const §6!Z§:String = "CutScene_Type_Outro";
      
      public static const §]!W§:String = "CutScene_Type_Final_Outro";
       
      
      private var §7!T§:§,C§;
      
      private var §2?§:String;
      
      private var §`!Y§:Vector.<§3'§>;
      
      private var §;"!§:Number;
      
      private var §<^§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §]!$§:Sprite;
      
      private var §=w§:Boolean = true;
      
      private var §#Z§:uint;
      
      private var §0!G§:Boolean;
      
      private var §'!m§:§&!D§;
      
      private var §#"H§:§&!D§;
      
      public function §>",§(param1:Object, param2:String)
      {
         var _loc3_:§3'§ = null;
         var _loc4_:Object = null;
         this.§`!Y§ = new Vector.<§3'§>();
         super();
         this.§;"!§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§2?§ = §=!5§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§2?§ = §6!Z§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§;!9§(_loc4_);
               if(_loc3_)
               {
                  this.§`!Y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§`!Y§)
            {
               if(_loc3_ is §?!'§)
               {
                  (_loc3_ as §?!'§).setSize(this.§<!f§,this.§8>§);
                  (_loc3_ as §?!'§).§?!!§ = this.§=w§;
               }
               else if(_loc3_ is §5"!§)
               {
                  (_loc3_ as §5"!§).setSize(this.§<!f§,this.§8>§);
                  (_loc3_ as §5"!§).§"n§ = this.§=w§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      private function §;!9§(param1:Object) : §3'§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §3'§.§4!$§:
               return new §5"!§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §3'§.§7!p§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §?!'§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §3'§.§-""§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §#"G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §3'§.§7"2§:
               return new §%J§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §3'§.§ "F§:
               this.§<^§ = param1.time * 1000;
               break;
            case §3'§.§>^§:
               this.§<!f§ = param1.width;
               this.§8>§ = param1.height;
               break;
            case §3'§.§ 9§:
               this.§=w§ = false;
               break;
            case §3'§.§#!4§:
               this.§=w§ = true;
               break;
            case §3'§.§1!U§:
               this.§#Z§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
         this.§`!Y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]!$§)
         {
            this.§]!$§ = new Sprite();
         }
         this.§;"!§ += param1;
         var _loc2_:int = this.§`!Y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§`!Y§[_loc2_].update(this.§;"!§,this.§]!$§,this.§7!T§))
            {
               this.§`!Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!@§();
         this.§3H§();
         this.§7!#§();
         return this.§;"!§ < this.§<^§;
      }
      
      private function §7!#§() : void
      {
         var _loc1_:int = §^!e§.§;b§.height;
         var _loc2_:Number = §9q§.§9!$§;
         var _loc3_:Number = §9q§.§+w§;
         var _loc4_:int = (_loc1_ - this.§8>§ * _loc2_) / _loc2_;
         this.§]!$§.y = _loc4_ >> 1;
      }
      
      private function §4!@§() : void
      {
         §^!e§.§`?§.color = this.§#Z§;
      }
      
      private function §3H§() : void
      {
         if(this.§0!G§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]!$§.getChildByName(§5"!§.§!#§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§0!G§ = true;
      }
      
      public function clone(param1:§,C§) : §>",§
      {
         var _loc3_:§3'§ = null;
         var _loc2_:§>",§ = new §>",§(null,null);
         for each(_loc3_ in this.§`!Y§)
         {
            _loc2_.§`!Y§.push(_loc3_.clone());
         }
         _loc2_.§;"!§ = this.§;"!§;
         _loc2_.§<^§ = this.§<^§;
         _loc2_.§<!f§ = this.§<!f§;
         _loc2_.§8>§ = this.§8>§;
         _loc2_.§=w§ = this.§=w§;
         _loc2_.§#Z§ = this.§#Z§;
         _loc2_.§2?§ = this.§2?§;
         _loc2_.§7!T§ = param1;
         return _loc2_;
      }
      
      public function get §5"-§() : String
      {
         return this.§2?§;
      }
      
      public function set §5"-§(param1:String) : void
      {
         this.§2?§ = param1;
      }
   }
}
