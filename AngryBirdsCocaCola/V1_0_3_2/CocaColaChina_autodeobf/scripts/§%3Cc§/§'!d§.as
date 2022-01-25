package §<c§
{
   import §+R§.§0O§;
   import §8r§.§@V§;
   import §;t§.§6!K§;
   import §;t§.Sprite;
   import §=F§.§"n§;
   
   public class §'!d§
   {
      
      public static const §9!3§:String = "CutScene_Type_Intro";
      
      public static const §<!a§:String = "CutScene_Type_Outro";
      
      public static const §48§:String = "CutScene_Type_Final_Outro";
       
      
      private var § u§:§@V§;
      
      private var §2!H§:String;
      
      private var §7n§:Vector.<§^N§>;
      
      private var §>!+§:Number;
      
      private var §88§:Number;
      
      private var §=$§:Number;
      
      private var §1T§:Number;
      
      private var §8q§:Sprite;
      
      private var §[!>§:Boolean = true;
      
      private var §#!V§:uint;
      
      private var §[!0§:Boolean;
      
      private var §@!F§:§6!K§;
      
      private var §<D§:§6!K§;
      
      public function §'!d§(param1:Object, param2:String)
      {
         var _loc3_:§^N§ = null;
         var _loc4_:Object = null;
         this.§7n§ = new Vector.<§^N§>();
         super();
         this.§>!+§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§2!H§ = §9!3§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§2!H§ = §<!a§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§ in§(_loc4_);
               if(_loc3_)
               {
                  this.§7n§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7n§)
            {
               if(_loc3_ is §2l§)
               {
                  (_loc3_ as §2l§).§-!A§(this.§=$§,this.§1T§);
                  (_loc3_ as §2l§).§5!L§ = this.§[!>§;
               }
               else if(_loc3_ is §+5§)
               {
                  (_loc3_ as §+5§).§-!A§(this.§=$§,this.§1T§);
                  (_loc3_ as §+5§).§=!%§ = this.§[!>§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8q§;
      }
      
      private function § in§(param1:Object) : §^N§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §^N§.§'y§:
               return new §+5§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §^N§.§4!2§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2l§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §^N§.§#!!§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §3!-§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §^N§.§,!"§:
               return new §#!4§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §^N§.END:
               this.§88§ = param1.time * 1000;
               break;
            case §^N§.§%!a§:
               this.§=$§ = param1.width;
               this.§1T§ = param1.height;
               break;
            case §^N§.§7!b§:
               this.§[!>§ = false;
               break;
            case §^N§.§in §:
               this.§[!>§ = true;
               break;
            case §^N§.§7o§:
               this.§#!V§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8q§)
         {
            this.§8q§.dispose();
            this.§8q§ = null;
         }
         this.§7n§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8q§)
         {
            this.§8q§ = new Sprite();
         }
         this.§>!+§ += param1;
         var _loc2_:int = this.§7n§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7n§[_loc2_].update(this.§>!+§,this.§8q§,this.§ u§))
            {
               this.§7n§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]!H§();
         this.§&!@§();
         this.§`2§();
         return this.§>!+§ < this.§88§;
      }
      
      private function §`2§() : void
      {
         var _loc1_:int = §0O§.§=&§.§+;§.height;
         var _loc2_:Number = §"n§.§#"§;
         var _loc3_:Number = §"n§.§+l§;
         var _loc4_:int = (_loc1_ - this.§1T§ * _loc2_) / _loc2_;
         this.§8q§.y = _loc4_ >> 1;
      }
      
      private function §]!H§() : void
      {
         §0O§.§=&§.color = this.§#!V§;
      }
      
      private function §&!@§() : void
      {
         if(this.§[!0§)
         {
            return;
         }
         var _loc1_:Sprite = this.§8q§.getChildByName(§+5§.§'m§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§[!0§ = true;
      }
      
      public function clone(param1:§@V§) : §'!d§
      {
         var _loc3_:§^N§ = null;
         var _loc2_:§'!d§ = new §'!d§(null,null);
         for each(_loc3_ in this.§7n§)
         {
            _loc2_.§7n§.push(_loc3_.clone());
         }
         _loc2_.§>!+§ = this.§>!+§;
         _loc2_.§88§ = this.§88§;
         _loc2_.§=$§ = this.§=$§;
         _loc2_.§1T§ = this.§1T§;
         _loc2_.§[!>§ = this.§[!>§;
         _loc2_.§#!V§ = this.§#!V§;
         _loc2_.§2!H§ = this.§2!H§;
         _loc2_.§ u§ = param1;
         return _loc2_;
      }
      
      public function get §6@§() : String
      {
         return this.§2!H§;
      }
      
      public function set §6@§(param1:String) : void
      {
         this.§2!H§ = param1;
      }
   }
}
