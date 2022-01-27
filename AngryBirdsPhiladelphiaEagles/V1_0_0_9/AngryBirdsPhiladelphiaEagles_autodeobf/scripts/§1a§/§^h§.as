package §1a§
{
   import §'!3§.§&!H§;
   import §-!'§.§ s§;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   import §=z§.§0!E§;
   
   public class §^h§
   {
      
      public static const §%!Q§:String = "CutScene_Type_Intro";
      
      public static const §9_§:String = "CutScene_Type_Outro";
      
      public static const §8z§:String = "CutScene_Type_Final_Outro";
       
      
      private var §@!8§:§'K§;
      
      private var §<E§:String;
      
      private var §1k§:Vector.<§#]§>;
      
      private var §`!3§:Number;
      
      private var §!#§:Number;
      
      private var §0!A§:Number;
      
      private var §3>§:Number;
      
      private var §46§:Sprite;
      
      private var §!!%§:Boolean = true;
      
      private var §7I§:uint;
      
      private var §3D§:Boolean;
      
      private var §5!M§:§ s§;
      
      private var §-!1§:§ s§;
      
      public function §^h§(param1:Object, param2:String)
      {
         var _loc3_:§#]§ = null;
         var _loc4_:Object = null;
         this.§1k§ = new Vector.<§#]§>();
         super();
         this.§`!3§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§<E§ = §%!Q§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§<E§ = §9_§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§29§(_loc4_);
               if(_loc3_)
               {
                  this.§1k§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§1k§)
            {
               if(_loc3_ is §2!?§)
               {
                  (_loc3_ as §2!?§).setSize(this.§0!A§,this.§3>§);
                  (_loc3_ as §2!?§).§+o§ = this.§!!%§;
               }
               else if(_loc3_ is §0q§)
               {
                  (_loc3_ as §0q§).setSize(this.§0!A§,this.§3>§);
                  (_loc3_ as §0q§).§#"§ = this.§!!%§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      private function §29§(param1:Object) : §#]§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §#]§.§ !"§:
               return new §0q§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §#]§.§?a§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2!?§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §#]§.§%_§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §0u§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §#]§.§@!?§:
               return new §"6§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §#]§.END:
               this.§!#§ = param1.time * 1000;
               break;
            case §#]§.native:
               this.§0!A§ = param1.width;
               this.§3>§ = param1.height;
               break;
            case §#]§.§2<§:
               this.§!!%§ = false;
               break;
            case §#]§.§0!7§:
               this.§!!%§ = true;
               break;
            case §#]§.§0b§:
               this.§7I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§46§)
         {
            this.§46§.dispose();
            this.§46§ = null;
         }
         this.§1k§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§46§)
         {
            this.§46§ = new Sprite();
         }
         this.§`!3§ += param1;
         var _loc2_:int = this.§1k§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§1k§[_loc2_].update(this.§`!3§,this.§46§,this.§@!8§))
            {
               this.§1k§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]R§();
         this.§^[§();
         this.§#N§();
         return this.§`!3§ < this.§!#§;
      }
      
      private function §#N§() : void
      {
         var _loc1_:int = §&!H§.§+!H§.§+R§.height;
         var _loc2_:Number = §0!E§.§@!,§;
         var _loc3_:Number = §0!E§.§2!A§;
         var _loc4_:int = (_loc1_ - this.§3>§ * _loc2_) / _loc2_;
         this.§46§.y = _loc4_ >> 1;
      }
      
      private function §]R§() : void
      {
         §&!H§.§+!H§.color = this.§7I§;
      }
      
      private function §^[§() : void
      {
         if(this.§3D§)
         {
            return;
         }
         var _loc1_:Sprite = this.§46§.getChildByName(§0q§.§?!I§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§3D§ = true;
      }
      
      public function clone(param1:§'K§) : §^h§
      {
         var _loc3_:§#]§ = null;
         var _loc2_:§^h§ = new §^h§(null,null);
         for each(_loc3_ in this.§1k§)
         {
            _loc2_.§1k§.push(_loc3_.clone());
         }
         _loc2_.§`!3§ = this.§`!3§;
         _loc2_.§!#§ = this.§!#§;
         _loc2_.§0!A§ = this.§0!A§;
         _loc2_.§3>§ = this.§3>§;
         _loc2_.§!!%§ = this.§!!%§;
         _loc2_.§7I§ = this.§7I§;
         _loc2_.§<E§ = this.§<E§;
         _loc2_.§@!8§ = param1;
         return _loc2_;
      }
      
      public function get §]!2§() : String
      {
         return this.§<E§;
      }
      
      public function set §]!2§(param1:String) : void
      {
         this.§<E§ = param1;
      }
   }
}
