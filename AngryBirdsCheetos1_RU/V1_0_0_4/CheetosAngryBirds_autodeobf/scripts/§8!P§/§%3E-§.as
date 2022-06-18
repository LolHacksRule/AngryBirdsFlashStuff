package §8!P§
{
   import §1!A§.§@!O§;
   import §1!A§.Sprite;
   import §8K§.§>g§;
   import §;!X§.§7`§;
   import §`M§.§'C§;
   
   public class §>-§
   {
      
      public static const §8F§:String = "CutScene_Type_Intro";
      
      public static const §=!]§:String = "CutScene_Type_Outro";
      
      public static const §]_§:String = "CutScene_Type_Final_Outro";
       
      
      private var §2!_§:§>g§;
      
      private var §4!`§:String;
      
      private var §'_§:Vector.<§60§>;
      
      private var §`Q§:Number;
      
      private var § !=§:Number;
      
      private var §^S§:Number;
      
      private var §6-§:Number;
      
      private var §0!5§:Sprite;
      
      private var §9!#§:Boolean = true;
      
      private var §<s§:uint;
      
      private var §^]§:Boolean;
      
      private var §7e§:§@!O§;
      
      private var §!v§:§@!O§;
      
      public function §>-§(param1:Object, param2:String)
      {
         var _loc3_:§60§ = null;
         var _loc4_:Object = null;
         this.§'_§ = new Vector.<§60§>();
         super();
         this.§`Q§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§4!`§ = §8F§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§4!`§ = §=!]§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§7R§(_loc4_);
               if(_loc3_)
               {
                  this.§'_§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'_§)
            {
               if(_loc3_ is §&!Q§)
               {
                  (_loc3_ as §&!Q§).§#t§(this.§^S§,this.§6-§);
                  (_loc3_ as §&!Q§).§,!N§ = this.§9!#§;
               }
               else if(_loc3_ is §3!7§)
               {
                  (_loc3_ as §3!7§).§#t§(this.§^S§,this.§6-§);
                  (_loc3_ as §3!7§).§<!I§ = this.§9!#§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!5§;
      }
      
      private function §7R§(param1:Object) : §60§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §60§.§0M§:
               return new §3!7§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §60§.§2!]§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §&!Q§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §60§.§>=§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §try §(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §60§.§3!O§:
               return new §import§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §60§.END:
               this.§ !=§ = param1.time * 1000;
               break;
            case §60§.§9!`§:
               this.§^S§ = param1.width;
               this.§6-§ = param1.height;
               break;
            case §60§.§@!P§:
               this.§9!#§ = false;
               break;
            case §60§.§5-§:
               this.§9!#§ = true;
               break;
            case §60§.§=_§:
               this.§<s§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§0!5§)
         {
            this.§0!5§.dispose();
            this.§0!5§ = null;
         }
         this.§'_§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§0!5§)
         {
            this.§0!5§ = new Sprite();
         }
         this.§`Q§ += param1;
         var _loc2_:int = this.§'_§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'_§[_loc2_].update(this.§`Q§,this.§0!5§,this.§2!_§))
            {
               this.§'_§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§'!K§();
         this.§,!Q§();
         this.§[X§();
         return this.§`Q§ < this.§ !=§;
      }
      
      private function §[X§() : void
      {
         var _loc1_:int = §'C§.§3b§.§1O§.height;
         var _loc2_:Number = §7`§.§%u§;
         var _loc3_:Number = §7`§.§4h§;
         var _loc4_:int = (_loc1_ - this.§6-§ * _loc2_) / _loc2_;
         this.§0!5§.y = _loc4_ >> 1;
      }
      
      private function §'!K§() : void
      {
         §'C§.§3b§.color = this.§<s§;
      }
      
      private function §,!Q§() : void
      {
         if(this.§^]§)
         {
            return;
         }
         var _loc1_:Sprite = this.§0!5§.getChildByName(§3!7§.§5]§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^]§ = true;
      }
      
      public function clone(param1:§>g§) : §>-§
      {
         var _loc3_:§60§ = null;
         var _loc2_:§>-§ = new §>-§(null,null);
         for each(_loc3_ in this.§'_§)
         {
            _loc2_.§'_§.push(_loc3_.clone());
         }
         _loc2_.§`Q§ = this.§`Q§;
         _loc2_.§ !=§ = this.§ !=§;
         _loc2_.§^S§ = this.§^S§;
         _loc2_.§6-§ = this.§6-§;
         _loc2_.§9!#§ = this.§9!#§;
         _loc2_.§<s§ = this.§<s§;
         _loc2_.§4!`§ = this.§4!`§;
         _loc2_.§2!_§ = param1;
         return _loc2_;
      }
      
      public function get §8E§() : String
      {
         return this.§4!`§;
      }
      
      public function set §8E§(param1:String) : void
      {
         this.§4!`§ = param1;
      }
   }
}
