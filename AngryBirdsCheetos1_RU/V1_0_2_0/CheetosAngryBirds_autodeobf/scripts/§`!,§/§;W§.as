package §`!,§
{
   import §,H§.§>!C§;
   import §,H§.Sprite;
   import §2!4§.§5T§;
   import §2!P§.§6=§;
   import §@!W§.§8!W§;
   
   public class §;W§
   {
      
      public static const §'!7§:String = "CutScene_Type_Intro";
      
      public static const §8p§:String = "CutScene_Type_Outro";
      
      public static const §1I§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^!2§:§5T§;
      
      private var §<E§:String;
      
      private var §%]§:Vector.<§&H§>;
      
      private var §7!,§:Number;
      
      private var §4Z§:Number;
      
      private var §,!E§:Number;
      
      private var §''§:Number;
      
      private var §=#§:Sprite;
      
      private var §89§:Boolean = true;
      
      private var §6y§:uint;
      
      private var §'!B§:Boolean;
      
      private var §'!O§:§>!C§;
      
      private var §6!T§:§>!C§;
      
      public function §;W§(param1:Object, param2:String)
      {
         var _loc3_:§&H§ = null;
         var _loc4_:Object = null;
         this.§%]§ = new Vector.<§&H§>();
         super();
         this.§7!,§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§<E§ = §'!7§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§<E§ = §8p§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§5!2§(_loc4_);
               if(_loc3_)
               {
                  this.§%]§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§%]§)
            {
               if(_loc3_ is § Q§)
               {
                  (_loc3_ as § Q§).§;0§(this.§,!E§,this.§''§);
                  (_loc3_ as § Q§).§2I§ = this.§89§;
               }
               else if(_loc3_ is §`x§)
               {
                  (_loc3_ as §`x§).§;0§(this.§,!E§,this.§''§);
                  (_loc3_ as §`x§).§[!R§ = this.§89§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§=#§;
      }
      
      private function §5!2§(param1:Object) : §&H§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §&H§.§5!D§:
               return new §`x§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §&H§.§"n§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new § Q§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §&H§.§0j§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`a§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §&H§.§-v§:
               return new §#B§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §&H§.END:
               this.§4Z§ = param1.time * 1000;
               break;
            case §&H§.§`!H§:
               this.§,!E§ = param1.width;
               this.§''§ = param1.height;
               break;
            case §&H§.§?!I§:
               this.§89§ = false;
               break;
            case §&H§.§9!C§:
               this.§89§ = true;
               break;
            case §&H§.§5u§:
               this.§6y§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
         this.§%]§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§=#§)
         {
            this.§=#§ = new Sprite();
         }
         this.§7!,§ += param1;
         var _loc2_:int = this.§%]§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§%]§[_loc2_].update(this.§7!,§,this.§=#§,this.§^!2§))
            {
               this.§%]§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[!4§();
         this.§ !#§();
         this.§8i§();
         return this.§7!,§ < this.§4Z§;
      }
      
      private function §8i§() : void
      {
         var _loc1_:int = §6=§.§4!8§.§4r§.height;
         var _loc2_:Number = §8!W§.§[w§;
         var _loc3_:Number = §8!W§.§@!+§;
         var _loc4_:int = (_loc1_ - this.§''§ * _loc2_) / _loc2_;
         this.§=#§.y = _loc4_ >> 1;
      }
      
      private function §[!4§() : void
      {
         §6=§.§4!8§.color = this.§6y§;
      }
      
      private function § !#§() : void
      {
         if(this.§'!B§)
         {
            return;
         }
         var _loc1_:Sprite = this.§=#§.getChildByName(§`x§.§6! §) as Sprite;
         if(!_loc1_)
         {
         }
         this.§'!B§ = true;
      }
      
      public function clone(param1:§5T§) : §;W§
      {
         var _loc3_:§&H§ = null;
         var _loc2_:§;W§ = new §;W§(null,null);
         for each(_loc3_ in this.§%]§)
         {
            _loc2_.§%]§.push(_loc3_.clone());
         }
         _loc2_.§7!,§ = this.§7!,§;
         _loc2_.§4Z§ = this.§4Z§;
         _loc2_.§,!E§ = this.§,!E§;
         _loc2_.§''§ = this.§''§;
         _loc2_.§89§ = this.§89§;
         _loc2_.§6y§ = this.§6y§;
         _loc2_.§<E§ = this.§<E§;
         _loc2_.§^!2§ = param1;
         return _loc2_;
      }
      
      public function get §,4§() : String
      {
         return this.§<E§;
      }
      
      public function set §,4§(param1:String) : void
      {
         this.§<E§ = param1;
      }
   }
}
