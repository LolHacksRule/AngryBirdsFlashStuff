package §8a§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §4W§.§!]§;
   import §`a§.§?!N§;
   import §`a§.Sprite;
   
   public class §7!$§
   {
      
      public static const §3!5§:String = "CutScene_Type_Intro";
      
      public static const §&,§:String = "CutScene_Type_Outro";
      
      public static const §;!X§:String = "CutScene_Type_Final_Outro";
       
      
      private var §5<§:§!]§;
      
      private var §+$§:String;
      
      private var §^n§:Vector.<§'!U§>;
      
      private var §"!#§:Number;
      
      private var §2-§:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §9!A§:Sprite;
      
      private var §>_§:Boolean = true;
      
      private var §@!7§:uint;
      
      private var §[!3§:Boolean;
      
      private var §]!!§:§?!N§;
      
      private var §=!#§:§?!N§;
      
      public function §7!$§(param1:Object, param2:String)
      {
         var _loc3_:§'!U§ = null;
         var _loc4_:Object = null;
         this.§^n§ = new Vector.<§'!U§>();
         super();
         this.§"!#§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§+$§ = §3!5§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§+$§ = §&,§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§"!C§(_loc4_);
               if(_loc3_)
               {
                  this.§^n§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§^n§)
            {
               if(_loc3_ is §?W§)
               {
                  (_loc3_ as §?W§).§,L§(this.§?l§,this.§+G§);
                  (_loc3_ as §?W§).§#^§ = this.§>_§;
               }
               else if(_loc3_ is §do§)
               {
                  (_loc3_ as §do§).§,L§(this.§?l§,this.§+G§);
                  (_loc3_ as §do§).§,T§ = this.§>_§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      private function §"!C§(param1:Object) : §'!U§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §'!U§.§=!=§:
               return new §do§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §'!U§.§;t§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §?W§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §'!U§.§7;§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §[E§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §'!U§.§^-§:
               return new §,o§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §'!U§.END:
               this.§2-§ = param1.time * 1000;
               break;
            case §'!U§.§^r§:
               this.§?l§ = param1.width;
               this.§+G§ = param1.height;
               break;
            case §'!U§.§+M§:
               this.§>_§ = false;
               break;
            case §'!U§.§5H§:
               this.§>_§ = true;
               break;
            case §'!U§.§`J§:
               this.§@!7§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§9!A§)
         {
            this.§9!A§.dispose();
            this.§9!A§ = null;
         }
         this.§^n§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§9!A§)
         {
            this.§9!A§ = new Sprite();
         }
         this.§"!#§ += param1;
         var _loc2_:int = this.§^n§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§^n§[_loc2_].update(this.§"!#§,this.§9!A§,this.§5<§))
            {
               this.§^n§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;!>§();
         this.§=!K§();
         this.§;!#§();
         return this.§"!#§ < this.§2-§;
      }
      
      private function §;!#§() : void
      {
         var _loc1_:int = §0Z§.§4J§.§&u§.height;
         var _loc2_:Number = §[&§.§8n§;
         var _loc3_:Number = §[&§.§6!H§;
         var _loc4_:int = (_loc1_ - this.§+G§ * _loc2_) / _loc2_;
         this.§9!A§.y = _loc4_ >> 1;
      }
      
      private function §;!>§() : void
      {
         §0Z§.§4J§.color = this.§@!7§;
      }
      
      private function §=!K§() : void
      {
         if(this.§[!3§)
         {
            return;
         }
         var _loc1_:Sprite = this.§9!A§.getChildByName(§do§.§5!%§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§[!3§ = true;
      }
      
      public function clone(param1:§!]§) : §7!$§
      {
         var _loc3_:§'!U§ = null;
         var _loc2_:§7!$§ = new §7!$§(null,null);
         for each(_loc3_ in this.§^n§)
         {
            _loc2_.§^n§.push(_loc3_.clone());
         }
         _loc2_.§"!#§ = this.§"!#§;
         _loc2_.§2-§ = this.§2-§;
         _loc2_.§?l§ = this.§?l§;
         _loc2_.§+G§ = this.§+G§;
         _loc2_.§>_§ = this.§>_§;
         _loc2_.§@!7§ = this.§@!7§;
         _loc2_.§+$§ = this.§+$§;
         _loc2_.§5<§ = param1;
         return _loc2_;
      }
      
      public function get §'!B§() : String
      {
         return this.§+$§;
      }
      
      public function set §'!B§(param1:String) : void
      {
         this.§+$§ = param1;
      }
   }
}
