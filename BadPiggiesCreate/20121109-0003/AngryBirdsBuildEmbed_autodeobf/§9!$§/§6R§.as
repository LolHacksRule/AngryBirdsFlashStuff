package §9!$§
{
   import §-!`§.§8!p§;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   
   public class §6R§
   {
      
      public static const §#!§:String = "CutScene_Type_Intro";
      
      public static const §4!0§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>!S§:§3p§;
      
      private var §<7§:String;
      
      private var §0!P§:Vector.<§&!W§>;
      
      private var §8!N§:Number;
      
      private var §&!G§:Number;
      
      private var §4!L§:Number;
      
      private var §"!C§:Number;
      
      private var §>E§:Sprite;
      
      private var §;!O§:Boolean = true;
      
      private var §8D§:uint;
      
      private var §8!5§:Boolean;
      
      private var §"I§:§8!p§;
      
      private var §+!C§:§8!p§;
      
      public function §6R§(param1:Object, param2:String)
      {
         var _loc3_:§&!W§ = null;
         var _loc4_:Object = null;
         this.§0!P§ = new Vector.<§&!W§>();
         super();
         this.§8!N§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§<7§ = §#!§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§<7§ = §4!0§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§9!M§(_loc4_);
               if(_loc3_)
               {
                  this.§0!P§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0!P§)
            {
               if(_loc3_ is §%!k§)
               {
                  (_loc3_ as §%!k§).setSize(this.§4!L§,this.§"!C§);
                  (_loc3_ as §%!k§).§#!O§ = this.§;!O§;
               }
               else if(_loc3_ is §!!N§)
               {
                  (_loc3_ as §!!N§).setSize(this.§4!L§,this.§"!C§);
                  (_loc3_ as §!!N§).§#@§ = this.§;!O§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>E§;
      }
      
      private function §9!M§(param1:Object) : §&!W§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §&!W§.§][§:
               return new §!!N§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §&!W§.§5!u§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §%!k§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §&!W§.§9J§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §0?§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §&!W§.§]V§:
               return new §+!-§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §&!W§.END:
               this.§&!G§ = param1.time * 1000;
               break;
            case §&!W§.§5b§:
               this.§4!L§ = param1.width;
               this.§"!C§ = param1.height;
               break;
            case §&!W§.§%E§:
               this.§;!O§ = false;
               break;
            case §&!W§.§+!f§:
               this.§;!O§ = true;
               break;
            case §&!W§.§#Y§:
               this.§8D§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§>E§)
         {
            this.§>E§.dispose();
            this.§>E§ = null;
         }
         this.§0!P§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§>E§)
         {
            this.§>E§ = new Sprite();
         }
         this.§8!N§ += param1;
         var _loc2_:int = this.§0!P§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0!P§[_loc2_].update(this.§8!N§,this.§>E§,this.§>!S§))
            {
               this.§0!P§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&%§();
         this.§^!W§();
         this.§]$§();
         return this.§8!N§ < this.§&!G§;
      }
      
      private function §]$§() : void
      {
         var _loc1_:int = §7j§.§else§.§84§.height;
         var _loc2_:Number = §'!V§.§9r§;
         var _loc3_:Number = §'!V§.§'A§;
         var _loc4_:int = (_loc1_ - this.§"!C§ * _loc2_) / _loc2_;
         this.§>E§.y = _loc4_ >> 1;
      }
      
      private function §&%§() : void
      {
         §7j§.§else§.color = this.§8D§;
      }
      
      private function §^!W§() : void
      {
         if(this.§8!5§)
         {
            return;
         }
         var _loc1_:Sprite = this.§>E§.getChildByName(§!!N§.§!6§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§8!5§ = true;
      }
      
      public function clone(param1:§3p§) : §6R§
      {
         var _loc3_:§&!W§ = null;
         var _loc2_:§6R§ = new §6R§(null,null);
         for each(_loc3_ in this.§0!P§)
         {
            _loc2_.§0!P§.push(_loc3_.clone());
         }
         _loc2_.§8!N§ = this.§8!N§;
         _loc2_.§&!G§ = this.§&!G§;
         _loc2_.§4!L§ = this.§4!L§;
         _loc2_.§"!C§ = this.§"!C§;
         _loc2_.§;!O§ = this.§;!O§;
         _loc2_.§8D§ = this.§8D§;
         _loc2_.§<7§ = this.§<7§;
         _loc2_.§>!S§ = param1;
         return _loc2_;
      }
      
      public function get §+G§() : String
      {
         return this.§<7§;
      }
      
      public function set §+G§(param1:String) : void
      {
         this.§<7§ = param1;
      }
   }
}
