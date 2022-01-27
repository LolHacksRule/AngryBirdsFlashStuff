package §%!>§
{
   import §<!F§.§5!+§;
   import §<!N§.Sprite;
   import §<!N§.§^3§;
   import §^'§.§ !C§;
   import §^h§.§2l§;
   
   public class §;n§
   {
      
      public static const §]!I§:String = "CutScene_Type_Intro";
      
      public static const §[<§:String = "CutScene_Type_Outro";
      
      public static const §8!A§:String = "CutScene_Type_Final_Outro";
       
      
      private var §1$§:§ !C§;
      
      private var §0!3§:String;
      
      private var §5!,§:Vector.<§7!<§>;
      
      private var §'z§:Number;
      
      private var §]q§:Number;
      
      private var §0!4§:Number;
      
      private var §0!$§:Number;
      
      private var §=!"§:Sprite;
      
      private var §@t§:Boolean = true;
      
      private var §"n§:uint;
      
      private var §7!+§:Boolean;
      
      private var §else§:§^3§;
      
      private var §='§:§^3§;
      
      public function §;n§(param1:Object, param2:String)
      {
         var _loc3_:§7!<§ = null;
         var _loc4_:Object = null;
         this.§5!,§ = new Vector.<§7!<§>();
         super();
         this.§'z§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§0!3§ = §]!I§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§0!3§ = §[<§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§&;§(_loc4_);
               if(_loc3_)
               {
                  this.§5!,§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5!,§)
            {
               if(_loc3_ is §%n§)
               {
                  (_loc3_ as §%n§).setSize(this.§0!4§,this.§0!$§);
                  (_loc3_ as §%n§).§1c§ = this.§@t§;
               }
               else if(_loc3_ is §-;§)
               {
                  (_loc3_ as §-;§).setSize(this.§0!4§,this.§0!$§);
                  (_loc3_ as §-;§).§;W§ = this.§@t§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!"§;
      }
      
      private function §&;§(param1:Object) : §7!<§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §7!<§.§&C§:
               return new §-;§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §7!<§.§5b§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §%n§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §7!<§.§!!I§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §9!2§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §7!<§.§@@§:
               return new §%2§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §7!<§.END:
               this.§]q§ = param1.time * 1000;
               break;
            case §7!<§.§>!F§:
               this.§0!4§ = param1.width;
               this.§0!$§ = param1.height;
               break;
            case §7!<§.§>!I§:
               this.§@t§ = false;
               break;
            case §7!<§.§;p§:
               this.§@t§ = true;
               break;
            case §7!<§.§`8§:
               this.§"n§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
            this.§=!"§ = null;
         }
         this.§5!,§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§=!"§)
         {
            this.§=!"§ = new Sprite();
         }
         this.§'z§ += param1;
         var _loc2_:int = this.§5!,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5!,§[_loc2_].update(this.§'z§,this.§=!"§,this.§1$§))
            {
               this.§5!,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ !P§();
         this.§'m§();
         this.§6!C§();
         return this.§'z§ < this.§]q§;
      }
      
      private function §6!C§() : void
      {
         var _loc1_:int = §2l§.§7K§.§3U§.height;
         var _loc2_:Number = §5!+§.§!M§;
         var _loc3_:Number = §5!+§.§?!#§;
         var _loc4_:int = (_loc1_ - this.§0!$§ * _loc2_) / _loc2_;
         this.§=!"§.y = _loc4_ >> 1;
      }
      
      private function § !P§() : void
      {
         §2l§.§7K§.color = this.§"n§;
      }
      
      private function §'m§() : void
      {
         if(this.§7!+§)
         {
            return;
         }
         var _loc1_:Sprite = this.§=!"§.getChildByName(§-;§.§#!!§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§7!+§ = true;
      }
      
      public function clone(param1:§ !C§) : §;n§
      {
         var _loc3_:§7!<§ = null;
         var _loc2_:§;n§ = new §;n§(null,null);
         for each(_loc3_ in this.§5!,§)
         {
            _loc2_.§5!,§.push(_loc3_.clone());
         }
         _loc2_.§'z§ = this.§'z§;
         _loc2_.§]q§ = this.§]q§;
         _loc2_.§0!4§ = this.§0!4§;
         _loc2_.§0!$§ = this.§0!$§;
         _loc2_.§@t§ = this.§@t§;
         _loc2_.§"n§ = this.§"n§;
         _loc2_.§0!3§ = this.§0!3§;
         _loc2_.§1$§ = param1;
         return _loc2_;
      }
      
      public function get §'!8§() : String
      {
         return this.§0!3§;
      }
      
      public function set §'!8§(param1:String) : void
      {
         this.§0!3§ = param1;
      }
   }
}
