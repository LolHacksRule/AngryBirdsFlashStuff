package §%j§
{
   import §!!R§.Sprite;
   import §!!R§.§^!4§;
   import §!J§.§[&§;
   import §&!W§.§8!K§;
   import §7W§.§ !+§;
   
   public class §#!,§
   {
      
      public static const §'!B§:String = "CutScene_Type_Intro";
      
      public static const §3!5§:String = "CutScene_Type_Outro";
      
      public static const §&,§:String = "CutScene_Type_Final_Outro";
       
      
      private var §&U§:§8!K§;
      
      private var §7!$§:String;
      
      private var §+$§:Vector.<§;!X§>;
      
      private var §[R§:Number;
      
      private var §^n§:Number;
      
      private var §6!>§:Number;
      
      private var §?l§:Number;
      
      private var §=!<§:Sprite;
      
      private var §2-§:Boolean = true;
      
      private var §>_§:uint;
      
      private var §@!7§:Boolean;
      
      private var §[!3§:§^!4§;
      
      private var §]!!§:§^!4§;
      
      public function §#!,§(param1:Object, param2:String)
      {
         var _loc3_:§;!X§ = null;
         var _loc4_:Object = null;
         this.§+$§ = new Vector.<§;!X§>();
         super();
         this.§[R§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§7!$§ = §'!B§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§7!$§ = §3!5§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§=!#§(_loc4_);
               if(_loc3_)
               {
                  this.§+$§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§+$§)
            {
               if(_loc3_ is §5!%§)
               {
                  (_loc3_ as §5!%§).§,T§(this.§6!>§,this.§?l§);
                  (_loc3_ as §5!%§).§5!O§ = this.§2-§;
               }
               else if(_loc3_ is §<O§)
               {
                  (_loc3_ as §<O§).§,T§(this.§6!>§,this.§?l§);
                  (_loc3_ as §<O§).§=P§ = this.§2-§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!<§;
      }
      
      private function §=!#§(param1:Object) : §;!X§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §;!X§.§^r§:
               return new §<O§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §;!X§.§=!=§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §5!%§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §;!X§.§;t§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §-!A§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §;!X§.§7;§:
               return new §`J§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §;!X§.END:
               this.§^n§ = param1.time * 1000;
               break;
            case §;!X§.§'!U§:
               this.§6!>§ = param1.width;
               this.§?l§ = param1.height;
               break;
            case §;!X§.§^-§:
               this.§2-§ = false;
               break;
            case §;!X§.§+M§:
               this.§2-§ = true;
               break;
            case §;!X§.§5H§:
               this.§>_§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§=!<§)
         {
            this.§=!<§.dispose();
            this.§=!<§ = null;
         }
         this.§+$§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§=!<§)
         {
            this.§=!<§ = new Sprite();
         }
         this.§[R§ += param1;
         var _loc2_:int = this.§+$§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§+$§[_loc2_].update(this.§[R§,this.§=!<§,this.§&U§))
            {
               this.§+$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;!#§();
         this.§;!>§();
         this.§"!C§();
         return this.§[R§ < this.§^n§;
      }
      
      private function §"!C§() : void
      {
         var _loc1_:int = § !+§.§ Z§.§ l§.height;
         var _loc2_:Number = §[&§.§8n§;
         var _loc3_:Number = §[&§.§6!H§;
         var _loc4_:int = (_loc1_ - this.§?l§ * _loc2_) / _loc2_;
         this.§=!<§.y = _loc4_ >> 1;
      }
      
      private function §;!#§() : void
      {
         § !+§.§ Z§.color = this.§>_§;
      }
      
      private function §;!>§() : void
      {
         if(this.§@!7§)
         {
            return;
         }
         var _loc1_:Sprite = this.§=!<§.getChildByName(§<O§.§,L§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§@!7§ = true;
      }
      
      public function clone(param1:§8!K§) : §#!,§
      {
         var _loc3_:§;!X§ = null;
         var _loc2_:§#!,§ = new §#!,§(null,null);
         for each(_loc3_ in this.§+$§)
         {
            _loc2_.§+$§.push(_loc3_.clone());
         }
         _loc2_.§[R§ = this.§[R§;
         _loc2_.§^n§ = this.§^n§;
         _loc2_.§6!>§ = this.§6!>§;
         _loc2_.§?l§ = this.§?l§;
         _loc2_.§2-§ = this.§2-§;
         _loc2_.§>_§ = this.§>_§;
         _loc2_.§7!$§ = this.§7!$§;
         _loc2_.§&U§ = param1;
         return _loc2_;
      }
      
      public function get §=!K§() : String
      {
         return this.§7!$§;
      }
      
      public function set §=!K§(param1:String) : void
      {
         this.§7!$§ = param1;
      }
   }
}
