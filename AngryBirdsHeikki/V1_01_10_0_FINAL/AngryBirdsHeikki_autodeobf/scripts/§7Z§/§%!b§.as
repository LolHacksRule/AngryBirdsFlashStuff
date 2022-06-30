package §7Z§
{
   import §"^§.§+!'§;
   import §2Y§.§7?§;
   import §2Y§.Sprite;
   import §9b§.§"!S§;
   import §=!<§.§>a§;
   
   public class §%!b§
   {
      
      public static const §^@§:String = "CutScene_Type_Intro";
      
      public static const §[!?§:String = "CutScene_Type_Outro";
      
      public static const §#!"§:String = "CutScene_Type_Final_Outro";
       
      
      private var §;u§:§>a§;
      
      private var §5!#§:String;
      
      private var §^E§:Vector.<§^!§>;
      
      private var §+K§:Number;
      
      private var §;q§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §;=§:Sprite;
      
      private var §`!`§:Boolean = true;
      
      private var §&X§:uint;
      
      private var §9!=§:Boolean;
      
      private var §#!&§:§7?§;
      
      private var § !V§:§7?§;
      
      public function §%!b§(param1:Object, param2:String)
      {
         var _loc3_:§^!§ = null;
         var _loc4_:Object = null;
         this.§^E§ = new Vector.<§^!§>();
         super();
         this.§+K§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§5!#§ = §^@§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§5!#§ = §[!?§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§@!=§(_loc4_);
               if(_loc3_)
               {
                  this.§^E§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§^E§)
            {
               if(_loc3_ is §"q§)
               {
                  (_loc3_ as §"q§).§1n§(this.§@!-§,this.§3S§);
                  (_loc3_ as §"q§).§ !,§ = this.§`!`§;
               }
               else if(_loc3_ is §&!Q§)
               {
                  (_loc3_ as §&!Q§).§1n§(this.§@!-§,this.§3S§);
                  (_loc3_ as §&!Q§).§'d§ = this.§`!`§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      private function §@!=§(param1:Object) : §^!§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §^!§.§+R§:
               return new §&!Q§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §^!§.§7!b§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §"q§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §^!§.§+q§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §&!F§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §^!§.§"Z§:
               return new §2u§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §^!§.END:
               this.§;q§ = param1.time * 1000;
               break;
            case §^!§.§"%§:
               this.§@!-§ = param1.width;
               this.§3S§ = param1.height;
               break;
            case §^!§.§@u§:
               this.§`!`§ = false;
               break;
            case §^!§.§"6§:
               this.§`!`§ = true;
               break;
            case §^!§.§"g§:
               this.§&X§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§;=§)
         {
            this.§;=§.dispose();
            this.§;=§ = null;
         }
         this.§^E§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§;=§)
         {
            this.§;=§ = new Sprite();
         }
         this.§+K§ += param1;
         var _loc2_:int = this.§^E§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§^E§[_loc2_].update(this.§+K§,this.§;=§,this.§;u§))
            {
               this.§^E§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2<§();
         this.§;C§();
         this.§0!c§();
         return this.§+K§ < this.§;q§;
      }
      
      private function §0!c§() : void
      {
         var _loc1_:int = §+!'§.§2d§.§9!_§.height;
         var _loc2_:Number = §"!S§.§<!4§;
         var _loc3_:Number = §"!S§.§[=§;
         var _loc4_:int = (_loc1_ - this.§3S§ * _loc2_) / _loc2_;
         this.§;=§.y = _loc4_ >> 1;
      }
      
      private function §2<§() : void
      {
         §+!'§.§2d§.color = this.§&X§;
      }
      
      private function §;C§() : void
      {
         if(this.§9!=§)
         {
            return;
         }
         var _loc1_:Sprite = this.§;=§.getChildByName(§&!Q§.§<!b§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§9!=§ = true;
      }
      
      public function clone(param1:§>a§) : §%!b§
      {
         var _loc3_:§^!§ = null;
         var _loc2_:§%!b§ = new §%!b§(null,null);
         for each(_loc3_ in this.§^E§)
         {
            _loc2_.§^E§.push(_loc3_.clone());
         }
         _loc2_.§+K§ = this.§+K§;
         _loc2_.§;q§ = this.§;q§;
         _loc2_.§@!-§ = this.§@!-§;
         _loc2_.§3S§ = this.§3S§;
         _loc2_.§`!`§ = this.§`!`§;
         _loc2_.§&X§ = this.§&X§;
         _loc2_.§5!#§ = this.§5!#§;
         _loc2_.§;u§ = param1;
         return _loc2_;
      }
      
      public function get §#$§() : String
      {
         return this.§5!#§;
      }
      
      public function set §#$§(param1:String) : void
      {
         this.§5!#§ = param1;
      }
   }
}
