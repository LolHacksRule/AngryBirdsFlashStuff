package §`"0§
{
   import §'!j§.Starling;
   import §'G§.§3$§;
   import §6#H§.§,"$§;
   import §6#H§.Sprite;
   import §`#@§.§7n§;
   
   public class §'! §
   {
      
      public static const §'#<§:String = "CutScene_Type_Intro";
      
      public static const §<"O§:String = "CutScene_Type_Outro";
      
      public static const §>#<§:String = "CutScene_Type_Final_Outro";
       
      
      private var §?#r§:§3$§;
      
      private var §;"a§:String;
      
      private var §'#D§:Vector.<§?#d§>;
      
      private var §9"3§:Number;
      
      private var §,?§:Number;
      
      private var §>H§:Number;
      
      private var §^l§:Number;
      
      private var §'#f§:Sprite;
      
      private var §`#L§:Boolean = true;
      
      private var §<!U§:uint;
      
      private var §!d§:Boolean;
      
      private var §&#4§:§,"$§;
      
      private var §'"T§:§,"$§;
      
      public function §'! §(param1:Object, param2:String)
      {
         var _loc3_:§?#d§ = null;
         var _loc4_:Object = null;
         this.§'#D§ = new Vector.<§?#d§>();
         super();
         this.§9"3§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;"a§ = §'#<§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;"a§ = §<"O§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§-$-§(_loc4_);
               if(_loc3_)
               {
                  this.§'#D§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'#D§)
            {
               if(_loc3_ is §-"J§)
               {
                  (_loc3_ as §-"J§).setSize(this.§>H§,this.§^l§);
                  (_loc3_ as §-"J§).§=!c§ = this.§`#L§;
               }
               else if(_loc3_ is §@!9§)
               {
                  (_loc3_ as §@!9§).setSize(this.§>H§,this.§^l§);
                  (_loc3_ as §@!9§).§;1§ = this.§`#L§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      private function §-$-§(param1:Object) : §?#d§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §?#d§.§+"U§:
               return new §@!9§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §?#d§.§`!=§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §-"J§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §?#d§.§[#-§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §!#7§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §?#d§.§<"M§:
               return new § #h§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §?#d§.§%#Z§:
               this.§,?§ = param1.time * 1000;
               break;
            case §?#d§.§2"M§:
               this.§>H§ = param1.width;
               this.§^l§ = param1.height;
               break;
            case §?#d§.§,$0§:
               this.§`#L§ = false;
               break;
            case §?#d§.§>"V§:
               this.§`#L§ = true;
               break;
            case §?#d§.§10§:
               this.§<!U§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         this.§'#D§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§'#f§)
         {
            this.§'#f§ = new Sprite();
         }
         this.§9"3§ += param1;
         var _loc2_:int = this.§'#D§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'#D§[_loc2_].update(this.§9"3§,this.§'#f§,this.§?#r§))
            {
               this.§'#D§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]"4§();
         this.§3#%§();
         this.§0$5§();
         return this.§9"3§ < this.§,?§;
      }
      
      private function §0$5§() : void
      {
         var _loc1_:int = Starling.§?2§.height;
         var _loc2_:int = Starling.§?2§.width;
         var _loc3_:Number = §7n§.§9#o§;
         var _loc4_:Number = §7n§.§'#M§;
         var _loc5_:int = (_loc1_ - this.§^l§ * _loc3_) / _loc3_;
         this.§'#f§.scaleX = this.§'#f§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§'#f§.y = _loc5_ >> 1;
      }
      
      private function §]"4§() : void
      {
         Starling.§>x§.color = this.§<!U§;
      }
      
      private function §3#%§() : void
      {
         if(this.§!d§)
         {
            return;
         }
         var _loc1_:Sprite = this.§'#f§.getChildByName(§@!9§.§7!X§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§!d§ = true;
      }
      
      public function clone(param1:§3$§) : §'! §
      {
         var _loc3_:§?#d§ = null;
         var _loc2_:§'! § = new §'! §(null,null);
         for each(_loc3_ in this.§'#D§)
         {
            _loc2_.§'#D§.push(_loc3_.clone());
         }
         _loc2_.§9"3§ = this.§9"3§;
         _loc2_.§,?§ = this.§,?§;
         _loc2_.§>H§ = this.§>H§;
         _loc2_.§^l§ = this.§^l§;
         _loc2_.§`#L§ = this.§`#L§;
         _loc2_.§<!U§ = this.§<!U§;
         _loc2_.§;"a§ = this.§;"a§;
         _loc2_.§?#r§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§;"a§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§;"a§ = param1;
      }
   }
}
