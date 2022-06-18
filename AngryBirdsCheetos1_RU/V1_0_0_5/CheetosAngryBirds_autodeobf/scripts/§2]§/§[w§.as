package §2]§
{
   import §'d§.§3>§;
   import §@!§.§?! §;
   import §]_§.§!F§;
   import §null §.§>U§;
   import §null §.Sprite;
   
   public class §[w§
   {
      
      public static const §3!G§:String = "CutScene_Type_Intro";
      
      public static const §2!3§:String = "CutScene_Type_Outro";
      
      public static const §2R§:String = "CutScene_Type_Final_Outro";
       
      
      private var §`r§:§?! §;
      
      private var §5!_§:String;
      
      private var §]!6§:Vector.<§#!F§>;
      
      private var § H§:Number;
      
      private var §<![§:Number;
      
      private var §`!S§:Number;
      
      private var §]n§:Number;
      
      private var §&!C§:Sprite;
      
      private var §8!"§:Boolean = true;
      
      private var §8B§:uint;
      
      private var §%;§:Boolean;
      
      private var §,k§:§>U§;
      
      private var §01§:§>U§;
      
      public function §[w§(param1:Object, param2:String)
      {
         var _loc3_:§#!F§ = null;
         var _loc4_:Object = null;
         this.§]!6§ = new Vector.<§#!F§>();
         super();
         this.§ H§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§5!_§ = §3!G§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§5!_§ = §2!3§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§7U§(_loc4_);
               if(_loc3_)
               {
                  this.§]!6§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]!6§)
            {
               if(_loc3_ is §;r§)
               {
                  (_loc3_ as §;r§).§<x§(this.§`!S§,this.§]n§);
                  (_loc3_ as §;r§).§`x§ = this.§8!"§;
               }
               else if(_loc3_ is §?-§)
               {
                  (_loc3_ as §?-§).§<x§(this.§`!S§,this.§]n§);
                  (_loc3_ as §?-§).§ !"§ = this.§8!"§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!C§;
      }
      
      private function §7U§(param1:Object) : §#!F§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §#!F§.§"^§:
               return new §?-§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §#!F§.§5!>§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §;r§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §#!F§.§^x§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §42§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §#!F§.§,!]§:
               return new §^§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §#!F§.END:
               this.§<![§ = param1.time * 1000;
               break;
            case §#!F§.§ v§:
               this.§`!S§ = param1.width;
               this.§]n§ = param1.height;
               break;
            case §#!F§.§^!&§:
               this.§8!"§ = false;
               break;
            case §#!F§.§;?§:
               this.§8!"§ = true;
               break;
            case §#!F§.§ C§:
               this.§8B§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§&!C§)
         {
            this.§&!C§.dispose();
            this.§&!C§ = null;
         }
         this.§]!6§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§&!C§)
         {
            this.§&!C§ = new Sprite();
         }
         this.§ H§ += param1;
         var _loc2_:int = this.§]!6§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]!6§[_loc2_].update(this.§ H§,this.§&!C§,this.§`r§))
            {
               this.§]!6§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3!C§();
         this.§3!#§();
         this.§9!<§();
         return this.§ H§ < this.§<![§;
      }
      
      private function §9!<§() : void
      {
         var _loc1_:int = §!F§.§[M§.§-D§.height;
         var _loc2_:Number = §3>§.§5F§;
         var _loc3_:Number = §3>§.§&e§;
         var _loc4_:int = (_loc1_ - this.§]n§ * _loc2_) / _loc2_;
         this.§&!C§.y = _loc4_ >> 1;
      }
      
      private function §3!C§() : void
      {
         §!F§.§[M§.color = this.§8B§;
      }
      
      private function §3!#§() : void
      {
         if(this.§%;§)
         {
            return;
         }
         var _loc1_:Sprite = this.§&!C§.getChildByName(§?-§.§]$§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§%;§ = true;
      }
      
      public function clone(param1:§?! §) : §[w§
      {
         var _loc3_:§#!F§ = null;
         var _loc2_:§[w§ = new §[w§(null,null);
         for each(_loc3_ in this.§]!6§)
         {
            _loc2_.§]!6§.push(_loc3_.clone());
         }
         _loc2_.§ H§ = this.§ H§;
         _loc2_.§<![§ = this.§<![§;
         _loc2_.§`!S§ = this.§`!S§;
         _loc2_.§]n§ = this.§]n§;
         _loc2_.§8!"§ = this.§8!"§;
         _loc2_.§8B§ = this.§8B§;
         _loc2_.§5!_§ = this.§5!_§;
         _loc2_.§`r§ = param1;
         return _loc2_;
      }
      
      public function get §^t§() : String
      {
         return this.§5!_§;
      }
      
      public function set §^t§(param1:String) : void
      {
         this.§5!_§ = param1;
      }
   }
}
