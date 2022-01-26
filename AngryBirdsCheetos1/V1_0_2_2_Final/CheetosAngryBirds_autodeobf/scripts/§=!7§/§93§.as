package §=!7§
{
   import § `§.§2w§;
   import §?m§.§7?§;
   import §]@§.§9!<§;
   import §]@§.Sprite;
   import §`C§.§9!'§;
   
   public class §93§
   {
      
      public static const §2&§:String = "CutScene_Type_Intro";
      
      public static const §6!N§:String = "CutScene_Type_Outro";
      
      public static const §,,§:String = "CutScene_Type_Final_Outro";
       
      
      private var §8!M§:§2w§;
      
      private var §5!3§:String;
      
      private var §0,§:Vector.<§%f§>;
      
      private var §3-§:Number;
      
      private var §1s§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §?!N§:Sprite;
      
      private var get:Boolean = true;
      
      private var §#A§:uint;
      
      private var §<+§:Boolean;
      
      private var §`7§:§9!<§;
      
      private var §[!%§:§9!<§;
      
      public function §93§(param1:Object, param2:String)
      {
         var _loc3_:§%f§ = null;
         var _loc4_:Object = null;
         this.§0,§ = new Vector.<§%f§>();
         super();
         this.§3-§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§5!3§ = §2&§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§5!3§ = §6!N§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§?,§(_loc4_);
               if(_loc3_)
               {
                  this.§0,§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0,§)
            {
               if(_loc3_ is §'!M§)
               {
                  (_loc3_ as §'!M§).§%r§(this.§^!I§,this.§,!X§);
                  (_loc3_ as §'!M§).§9![§ = this.get;
               }
               else if(_loc3_ is §3&§)
               {
                  (_loc3_ as §3&§).§%r§(this.§^!I§,this.§,!X§);
                  (_loc3_ as §3&§).§true § = this.get;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      private function §?,§(param1:Object) : §%f§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §%f§.§,H§:
               return new §3&§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §%f§.§2k§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §'!M§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §%f§.§7g§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+!R§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §%f§.§`F§:
               return new §=!2§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §%f§.END:
               this.§1s§ = param1.time * 1000;
               break;
            case §%f§.§]=§:
               this.§^!I§ = param1.width;
               this.§,!X§ = param1.height;
               break;
            case §%f§.§<!B§:
               this.get = false;
               break;
            case §%f§.§]!!§:
               this.get = true;
               break;
            case §%f§.§7!8§:
               this.§#A§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§?!N§)
         {
            this.§?!N§.dispose();
            this.§?!N§ = null;
         }
         this.§0,§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§?!N§)
         {
            this.§?!N§ = new Sprite();
         }
         this.§3-§ += param1;
         var _loc2_:int = this.§0,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0,§[_loc2_].update(this.§3-§,this.§?!N§,this.§8!M§))
            {
               this.§0,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§?O§();
         this.§+_§();
         this.§0!,§();
         return this.§3-§ < this.§1s§;
      }
      
      private function §0!,§() : void
      {
         var _loc1_:int = §9!'§.§7!Z§.§>!D§.height;
         var _loc2_:Number = §7?§.§&Z§;
         var _loc3_:Number = §7?§.§1H§;
         var _loc4_:int = (_loc1_ - this.§,!X§ * _loc2_) / _loc2_;
         this.§?!N§.y = _loc4_ >> 1;
      }
      
      private function §?O§() : void
      {
         §9!'§.§7!Z§.color = this.§#A§;
      }
      
      private function §+_§() : void
      {
         if(this.§<+§)
         {
            return;
         }
         var _loc1_:Sprite = this.§?!N§.getChildByName(§3&§.§[!M§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§<+§ = true;
      }
      
      public function clone(param1:§2w§) : §93§
      {
         var _loc3_:§%f§ = null;
         var _loc2_:§93§ = new §93§(null,null);
         for each(_loc3_ in this.§0,§)
         {
            _loc2_.§0,§.push(_loc3_.clone());
         }
         _loc2_.§3-§ = this.§3-§;
         _loc2_.§1s§ = this.§1s§;
         _loc2_.§^!I§ = this.§^!I§;
         _loc2_.§,!X§ = this.§,!X§;
         _loc2_.get = this.get;
         _loc2_.§#A§ = this.§#A§;
         _loc2_.§5!3§ = this.§5!3§;
         _loc2_.§8!M§ = param1;
         return _loc2_;
      }
      
      public function get §]!A§() : String
      {
         return this.§5!3§;
      }
      
      public function set §]!A§(param1:String) : void
      {
         this.§5!3§ = param1;
      }
   }
}
