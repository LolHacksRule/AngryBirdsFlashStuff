package §9z§
{
   import §-!f§.§7!6§;
   import §-!f§.Sprite;
   import §6!4§.§<!D§;
   import §6_§.§,!>§;
   import com.angrybirds.§6U§;
   
   public class §1!$§
   {
      
      public static const §4",§:String = "CutScene_Type_Intro";
      
      public static const §6"4§:String = "CutScene_Type_Outro";
      
      public static const §%z§:String = "CutScene_Type_Final_Outro";
       
      
      private var §'+§:§,!>§;
      
      private var §^!`§:String;
      
      private var §+!7§:Vector.<§"^§>;
      
      private var §!`§:Number;
      
      private var §7!-§:Number;
      
      private var §<!"§:Number;
      
      private var §50§:Number;
      
      private var §]!c§:Sprite;
      
      private var §>"5§:Boolean = true;
      
      private var §,j§:uint;
      
      private var §'!V§:Boolean;
      
      private var §6!5§:§7!6§;
      
      private var §^"&§:§7!6§;
      
      public function §1!$§(param1:Object, param2:String)
      {
         var _loc3_:§"^§ = null;
         var _loc4_:Object = null;
         this.§+!7§ = new Vector.<§"^§>();
         super();
         this.§!`§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§^!`§ = §4",§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§^!`§ = §6"4§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§#!I§(_loc4_);
               if(_loc3_)
               {
                  this.§+!7§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§+!7§)
            {
               if(_loc3_ is §#e§)
               {
                  (_loc3_ as §#e§).setSize(this.§<!"§,this.§50§);
                  (_loc3_ as §#e§).horizontal = this.§>"5§;
               }
               else if(_loc3_ is §3$§)
               {
                  (_loc3_ as §3$§).setSize(this.§<!"§,this.§50§);
                  (_loc3_ as §3$§).§!!q§ = this.§>"5§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!c§;
      }
      
      private function §#!I§(param1:Object) : §"^§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §"^§.§6!D§:
               return new §3$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §"^§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §#e§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §"^§.§2Q§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+!B§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §"^§.§!"+§:
               return new §-!i§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §"^§.END:
               this.§7!-§ = param1.time * 1000;
               break;
            case §"^§.§>1§:
               this.§<!"§ = param1.width;
               this.§50§ = param1.height;
               break;
            case §"^§.§1m§:
               this.§>"5§ = false;
               break;
            case §"^§.§6"$§:
               this.§>"5§ = true;
               break;
            case §"^§.§0""§:
               this.§,j§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]!c§)
         {
            this.§]!c§.dispose();
            this.§]!c§ = null;
         }
         this.§+!7§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]!c§)
         {
            this.§]!c§ = new Sprite();
         }
         this.§!`§ += param1;
         var _loc2_:int = this.§+!7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§+!7§[_loc2_].update(this.§!`§,this.§]!c§,this.§'+§))
            {
               this.§+!7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§"!7§();
         this.§^!W§();
         this.§!!'§();
         return this.§!`§ < this.§7!-§;
      }
      
      private function §!!'§() : void
      {
         var _loc1_:int = §<!D§.§7!9§.height;
         var _loc2_:Number = §6U§.§7!K§;
         var _loc3_:Number = §6U§.§7Z§;
         var _loc4_:int = (_loc1_ - this.§50§ * _loc2_) / _loc2_;
         this.§]!c§.y = _loc4_ >> 1;
      }
      
      private function §"!7§() : void
      {
         §<!D§.§?!_§.color = this.§,j§;
      }
      
      private function §^!W§() : void
      {
         if(this.§'!V§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]!c§.getChildByName(§3$§.§+!-§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§'!V§ = true;
      }
      
      public function clone(param1:§,!>§) : §1!$§
      {
         var _loc3_:§"^§ = null;
         var _loc2_:§1!$§ = new §1!$§(null,null);
         for each(_loc3_ in this.§+!7§)
         {
            _loc2_.§+!7§.push(_loc3_.clone());
         }
         _loc2_.§!`§ = this.§!`§;
         _loc2_.§7!-§ = this.§7!-§;
         _loc2_.§<!"§ = this.§<!"§;
         _loc2_.§50§ = this.§50§;
         _loc2_.§>"5§ = this.§>"5§;
         _loc2_.§,j§ = this.§,j§;
         _loc2_.§^!`§ = this.§^!`§;
         _loc2_.§'+§ = param1;
         return _loc2_;
      }
      
      public function get § !n§() : String
      {
         return this.§^!`§;
      }
      
      public function set § !n§(param1:String) : void
      {
         this.§^!`§ = param1;
      }
   }
}
