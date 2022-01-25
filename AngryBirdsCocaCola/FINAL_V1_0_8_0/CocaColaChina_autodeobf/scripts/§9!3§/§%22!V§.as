package §9!3§
{
   import §&!9§.§7!D§;
   import §&!9§.Sprite;
   import §+&§.§?y§;
   import §0!b§.§#!=§;
   import §48§.§4a§;
   
   public class §"!V§
   {
      
      public static const §@%§:String = "CutScene_Type_Intro";
      
      public static const §2!F§:String = "CutScene_Type_Outro";
      
      public static const §]f§:String = "CutScene_Type_Final_Outro";
       
      
      private var §<d§:§4a§;
      
      private var §0O§:String;
      
      private var §?V§:Vector.<§8C§>;
      
      private var §]L§:Number;
      
      private var §;!H§:Number;
      
      private var §"!R§:Number;
      
      private var §0[§:Number;
      
      private var §@!Y§:Sprite;
      
      private var §&,§:Boolean = true;
      
      private var §^!^§:uint;
      
      private var §4d§:Boolean;
      
      private var §;!Z§:§7!D§;
      
      private var §else §:§7!D§;
      
      public function §"!V§(param1:Object, param2:String)
      {
         var _loc3_:§8C§ = null;
         var _loc4_:Object = null;
         this.§?V§ = new Vector.<§8C§>();
         super();
         this.§]L§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§0O§ = §@%§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§0O§ = §2!F§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,!J§(_loc4_);
               if(_loc3_)
               {
                  this.§?V§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§?V§)
            {
               if(_loc3_ is §3!5§)
               {
                  (_loc3_ as §3!5§).§ !e§(this.§"!R§,this.§0[§);
                  (_loc3_ as §3!5§).§3!P§ = this.§&,§;
               }
               else if(_loc3_ is §1!7§)
               {
                  (_loc3_ as §1!7§).§ !e§(this.§"!R§,this.§0[§);
                  (_loc3_ as §1!7§).§#!A§ = this.§&,§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§@!Y§;
      }
      
      private function §,!J§(param1:Object) : §8C§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §8C§.§#9§:
               return new §1!7§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §8C§.§8!9§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §3!5§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §8C§.§0!U§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §-!U§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §8C§.§%[§:
               return new §]N§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §8C§.END:
               this.§;!H§ = param1.time * 1000;
               break;
            case §8C§.§`K§:
               this.§"!R§ = param1.width;
               this.§0[§ = param1.height;
               break;
            case §8C§.§?w§:
               this.§&,§ = false;
               break;
            case §8C§.§9!J§:
               this.§&,§ = true;
               break;
            case §8C§.§"!&§:
               this.§^!^§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§@!Y§)
         {
            this.§@!Y§.dispose();
            this.§@!Y§ = null;
         }
         this.§?V§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§@!Y§)
         {
            this.§@!Y§ = new Sprite();
         }
         this.§]L§ += param1;
         var _loc2_:int = this.§?V§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§?V§[_loc2_].update(this.§]L§,this.§@!Y§,this.§<d§))
            {
               this.§?V§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ 4§();
         this.§@b§();
         this.§<!C§();
         return this.§]L§ < this.§;!H§;
      }
      
      private function §<!C§() : void
      {
         var _loc1_:int = §?y§.§,u§.§@f§.height;
         var _loc2_:Number = §#!=§.§,@§;
         var _loc3_:Number = §#!=§.§>0§;
         var _loc4_:int = (_loc1_ - this.§0[§ * _loc2_) / _loc2_;
         this.§@!Y§.y = _loc4_ >> 1;
      }
      
      private function § 4§() : void
      {
         §?y§.§,u§.color = this.§^!^§;
      }
      
      private function §@b§() : void
      {
         if(this.§4d§)
         {
            return;
         }
         var _loc1_:Sprite = this.§@!Y§.getChildByName(§1!7§.§9b§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§4d§ = true;
      }
      
      public function clone(param1:§4a§) : §"!V§
      {
         var _loc3_:§8C§ = null;
         var _loc2_:§"!V§ = new §"!V§(null,null);
         for each(_loc3_ in this.§?V§)
         {
            _loc2_.§?V§.push(_loc3_.clone());
         }
         _loc2_.§]L§ = this.§]L§;
         _loc2_.§;!H§ = this.§;!H§;
         _loc2_.§"!R§ = this.§"!R§;
         _loc2_.§0[§ = this.§0[§;
         _loc2_.§&,§ = this.§&,§;
         _loc2_.§^!^§ = this.§^!^§;
         _loc2_.§0O§ = this.§0O§;
         _loc2_.§<d§ = param1;
         return _loc2_;
      }
      
      public function get §-m§() : String
      {
         return this.§0O§;
      }
      
      public function set §-m§(param1:String) : void
      {
         this.§0O§ = param1;
      }
   }
}
