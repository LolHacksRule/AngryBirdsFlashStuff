package §2r§
{
   import §#]§.§'5§;
   import §;^§.§+a§;
   import §;^§.Sprite;
   import §=!K§.§^Q§;
   import §??§.§5!@§;
   
   public class §@!,§
   {
      
      public static const §=+§:String = "CutScene_Type_Intro";
      
      public static const §6h§:String = "CutScene_Type_Outro";
      
      public static const §@! §:String = "CutScene_Type_Final_Outro";
       
      
      private var §9!=§:§^Q§;
      
      private var §3?§:String;
      
      private var § true§:Vector.<§]6§>;
      
      private var § in§:Number;
      
      private var §%w§:Number;
      
      private var §<w§:Number;
      
      private var §"!?§:Number;
      
      private var §>@§:Sprite;
      
      private var §?+§:Boolean = true;
      
      private var §#!"§:uint;
      
      private var §[O§:Boolean;
      
      private var §,^§:§+a§;
      
      private var §<%§:§+a§;
      
      public function §@!,§(param1:Object, param2:String)
      {
         var _loc3_:§]6§ = null;
         var _loc4_:Object = null;
         this.§ true§ = new Vector.<§]6§>();
         super();
         this.§ in§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§3?§ = §=+§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§3?§ = §6h§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§#s§(_loc4_);
               if(_loc3_)
               {
                  this.§ true§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§ true§)
            {
               if(_loc3_ is §2!N§)
               {
                  (_loc3_ as §2!N§).setSize(this.§<w§,this.§"!?§);
                  (_loc3_ as §2!N§).§4@§ = this.§?+§;
               }
               else if(_loc3_ is §^e§)
               {
                  (_loc3_ as §^e§).setSize(this.§<w§,this.§"!?§);
                  (_loc3_ as §^e§).§=!6§ = this.§?+§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>@§;
      }
      
      private function §#s§(param1:Object) : §]6§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §]6§.§]&§:
               return new §^e§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §]6§.§2F§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2!N§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §]6§.§+!"§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §5r§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §]6§.§]f§:
               return new §&!C§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §]6§.END:
               this.§%w§ = param1.time * 1000;
               break;
            case §]6§.§,J§:
               this.§<w§ = param1.width;
               this.§"!?§ = param1.height;
               break;
            case §]6§.§2&§:
               this.§?+§ = false;
               break;
            case §]6§.§3b§:
               this.§?+§ = true;
               break;
            case §]6§.§<=§:
               this.§#!"§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§>@§)
         {
            this.§>@§.dispose();
            this.§>@§ = null;
         }
         this.§ true§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§>@§)
         {
            this.§>@§ = new Sprite();
         }
         this.§ in§ += param1;
         var _loc2_:int = this.§ true§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§ true§[_loc2_].update(this.§ in§,this.§>@§,this.§9!=§))
            {
               this.§ true§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[!-§();
         this.§;n§();
         return this.§ in§ < this.§%w§;
      }
      
      private function §;n§() : void
      {
         var _loc1_:int = §5!@§.§[9§.height;
         var _loc2_:Number = §'5§.§@!=§;
         var _loc3_:Number = §'5§.§1G§;
         var _loc4_:int = (_loc1_ - this.§"!?§ * _loc2_) / _loc2_;
         this.§>@§.y = _loc4_ >> 1;
      }
      
      private function §[!-§() : void
      {
         §5!@§.§8%§.color = this.§#!"§;
      }
      
      public function clone(param1:§^Q§) : §@!,§
      {
         var _loc3_:§]6§ = null;
         var _loc2_:§@!,§ = new §@!,§(null,null);
         for each(_loc3_ in this.§ true§)
         {
            _loc2_.§ true§.push(_loc3_.clone());
         }
         _loc2_.§ in§ = this.§ in§;
         _loc2_.§%w§ = this.§%w§;
         _loc2_.§<w§ = this.§<w§;
         _loc2_.§"!?§ = this.§"!?§;
         _loc2_.§?+§ = this.§?+§;
         _loc2_.§#!"§ = this.§#!"§;
         _loc2_.§3?§ = this.§3?§;
         _loc2_.§9!=§ = param1;
         return _loc2_;
      }
      
      public function get §]B§() : String
      {
         return this.§3?§;
      }
      
      public function set §]B§(param1:String) : void
      {
         this.§3?§ = param1;
      }
   }
}
