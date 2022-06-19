package §3!Z§
{
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §^a§.§ !'§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §?!3§
   {
      
      public static const §-!b§:String = "CutScene_Type_Intro";
      
      public static const §'!d§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>!K§:§=!>§;
      
      private var §+!T§:String;
      
      private var §=!,§:Vector.<§!'§>;
      
      private var §#!c§:Number;
      
      private var §,!I§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §8!2§:Sprite;
      
      private var §;1§:Boolean = true;
      
      private var §7!-§:uint;
      
      private var §`!T§:Boolean;
      
      private var §5_§:§ !'§;
      
      private var §;-§:§ !'§;
      
      public function §?!3§(param1:Object, param2:String)
      {
         var _loc3_:§!'§ = null;
         var _loc4_:Object = null;
         this.§=!,§ = new Vector.<§!'§>();
         super();
         this.§#!c§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§+!T§ = §-!b§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§+!T§ = §'!d§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,!P§(_loc4_);
               if(_loc3_)
               {
                  this.§=!,§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§=!,§)
            {
               if(_loc3_ is §3p§)
               {
                  (_loc3_ as §3p§).§?<§(this.§]>§,this.§7w§);
                  (_loc3_ as §3p§).§%0§ = this.§;1§;
               }
               else if(_loc3_ is §+M§)
               {
                  (_loc3_ as §+M§).§?<§(this.§]>§,this.§7w§);
                  (_loc3_ as §+M§).§-+§ = this.§;1§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!2§;
      }
      
      private function §,!P§(param1:Object) : §!'§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §!'§.§7!H§:
               return new §+M§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §!'§.§4!D§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §3p§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §!'§.§-!%§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+!G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §!'§.§@!$§:
               return new §%5§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §!'§.END:
               this.§,!I§ = param1.time * 1000;
               break;
            case §!'§.§!?§:
               this.§]>§ = param1.width;
               this.§7w§ = param1.height;
               break;
            case §!'§.§0!V§:
               this.§;1§ = false;
               break;
            case §!'§.§ Y§:
               this.§;1§ = true;
               break;
            case §!'§.§ !c§:
               this.§7!-§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8!2§)
         {
            this.§8!2§.dispose();
            this.§8!2§ = null;
         }
         this.§=!,§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8!2§)
         {
            this.§8!2§ = new Sprite();
         }
         this.§#!c§ += param1;
         var _loc2_:int = this.§=!,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§=!,§[_loc2_].update(this.§#!c§,this.§8!2§,this.§>!K§))
            {
               this.§=!,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§<!8§();
         this.§1!J§();
         return this.§#!c§ < this.§,!I§;
      }
      
      private function §1!J§() : void
      {
         var _loc1_:int = §%[§.§^'§.height;
         var _loc2_:Number = §@!Z§.§<X§;
         var _loc3_:Number = §@!Z§.§5I§;
         var _loc4_:int = (_loc1_ - this.§7w§ * _loc2_) / _loc2_;
         this.§8!2§.y = _loc4_ >> 1;
      }
      
      private function §<!8§() : void
      {
         §%[§.§`1§.color = this.§7!-§;
      }
      
      public function clone(param1:§=!>§) : §?!3§
      {
         var _loc3_:§!'§ = null;
         var _loc2_:§?!3§ = new §?!3§(null,null);
         for each(_loc3_ in this.§=!,§)
         {
            _loc2_.§=!,§.push(_loc3_.clone());
         }
         _loc2_.§#!c§ = this.§#!c§;
         _loc2_.§,!I§ = this.§,!I§;
         _loc2_.§]>§ = this.§]>§;
         _loc2_.§7w§ = this.§7w§;
         _loc2_.§;1§ = this.§;1§;
         _loc2_.§7!-§ = this.§7!-§;
         _loc2_.§+!T§ = this.§+!T§;
         _loc2_.§>!K§ = param1;
         return _loc2_;
      }
      
      public function get §9!L§() : String
      {
         return this.§+!T§;
      }
      
      public function set §9!L§(param1:String) : void
      {
         this.§+!T§ = param1;
      }
   }
}
