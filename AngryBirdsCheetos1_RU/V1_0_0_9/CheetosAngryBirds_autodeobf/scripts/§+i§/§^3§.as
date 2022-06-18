package §+i§
{
   import §'!S§.§,!%§;
   import §7!U§.§2!7§;
   import §7u§.§&x§;
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §^3§
   {
      
      public static const §;!4§:String = "CutScene_Type_Intro";
      
      public static const §]!I§:String = "CutScene_Type_Outro";
      
      public static const §77§:String = "CutScene_Type_Final_Outro";
       
      
      private var §7!W§:§=m§;
      
      private var §'!3§:String;
      
      private var §5,§:Vector.<§'6§>;
      
      private var §5+§:Number;
      
      private var §<r§:Number;
      
      private var §5I§:Number;
      
      private var §1Q§:Number;
      
      private var §3!F§:Sprite;
      
      private var §4b§:Boolean = true;
      
      private var §,![§:uint;
      
      private var §6!D§:Boolean;
      
      private var §=q§:§&x§;
      
      private var §9§:§&x§;
      
      public function §^3§(param1:Object, param2:String)
      {
         var _loc3_:§'6§ = null;
         var _loc4_:Object = null;
         this.§5,§ = new Vector.<§'6§>();
         super();
         this.§5+§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§'!3§ = §;!4§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§'!3§ = §]!I§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§<!M§(_loc4_);
               if(_loc3_)
               {
                  this.§5,§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5,§)
            {
               if(_loc3_ is §6[§)
               {
                  (_loc3_ as §6[§).§,!K§(this.§5I§,this.§1Q§);
                  (_loc3_ as §6[§).§4L§ = this.§4b§;
               }
               else if(_loc3_ is §#!T§)
               {
                  (_loc3_ as §#!T§).§,!K§(this.§5I§,this.§1Q§);
                  (_loc3_ as §#!T§).§&&§ = this.§4b§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!F§;
      }
      
      private function §<!M§(param1:Object) : §'6§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §'6§.§3=§:
               return new §#!T§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §'6§.§5x§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §6[§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §'6§.§,3§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §[!7§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §'6§.§?`§:
               return new §&!K§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §'6§.END:
               this.§<r§ = param1.time * 1000;
               break;
            case §'6§.§7l§:
               this.§5I§ = param1.width;
               this.§1Q§ = param1.height;
               break;
            case §'6§.§1!S§:
               this.§4b§ = false;
               break;
            case §'6§.§?T§:
               this.§4b§ = true;
               break;
            case §'6§.§@!F§:
               this.§,![§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§3!F§)
         {
            this.§3!F§.dispose();
            this.§3!F§ = null;
         }
         this.§5,§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§3!F§)
         {
            this.§3!F§ = new Sprite();
         }
         this.§5+§ += param1;
         var _loc2_:int = this.§5,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5,§[_loc2_].update(this.§5+§,this.§3!F§,this.§7!W§))
            {
               this.§5,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3@§();
         this.§5?§();
         this.§[!V§();
         return this.§5+§ < this.§<r§;
      }
      
      private function §[!V§() : void
      {
         var _loc1_:int = §,!%§.§]!C§.§<O§.height;
         var _loc2_:Number = §2!7§.§!!D§;
         var _loc3_:Number = §2!7§.§0m§;
         var _loc4_:int = (_loc1_ - this.§1Q§ * _loc2_) / _loc2_;
         this.§3!F§.y = _loc4_ >> 1;
      }
      
      private function §3@§() : void
      {
         §,!%§.§]!C§.color = this.§,![§;
      }
      
      private function §5?§() : void
      {
         if(this.§6!D§)
         {
            return;
         }
         var _loc1_:Sprite = this.§3!F§.getChildByName(§#!T§.§0n§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§6!D§ = true;
      }
      
      public function clone(param1:§=m§) : §^3§
      {
         var _loc3_:§'6§ = null;
         var _loc2_:§^3§ = new §^3§(null,null);
         for each(_loc3_ in this.§5,§)
         {
            _loc2_.§5,§.push(_loc3_.clone());
         }
         _loc2_.§5+§ = this.§5+§;
         _loc2_.§<r§ = this.§<r§;
         _loc2_.§5I§ = this.§5I§;
         _loc2_.§1Q§ = this.§1Q§;
         _loc2_.§4b§ = this.§4b§;
         _loc2_.§,![§ = this.§,![§;
         _loc2_.§'!3§ = this.§'!3§;
         _loc2_.§7!W§ = param1;
         return _loc2_;
      }
      
      public function get §>F§() : String
      {
         return this.§'!3§;
      }
      
      public function set §>F§(param1:String) : void
      {
         this.§'!3§ = param1;
      }
   }
}
