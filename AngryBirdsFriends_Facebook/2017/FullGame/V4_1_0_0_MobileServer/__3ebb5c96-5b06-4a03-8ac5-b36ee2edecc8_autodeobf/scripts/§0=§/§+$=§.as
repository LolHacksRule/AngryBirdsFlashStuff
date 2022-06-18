package §0=§
{
   import §&!v§.§0"s§;
   import §&!v§.Sprite;
   import §6"r§.§!#A§;
   import §7!j§.§'0§;
   import §9+§.Starling;
   
   public class §+$=§
   {
      
      public static const §+#I§:String = "CutScene_Type_Intro";
      
      public static const §!$#§:String = "CutScene_Type_Outro";
      
      public static const §?<§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>!4§:§'0§;
      
      private var §;$'§:String;
      
      private var §;p§:Vector.<§6$'§>;
      
      private var §#"^§:Number;
      
      private var §>$!§:Number;
      
      private var § ";§:Number;
      
      private var §;!U§:Number;
      
      private var §'$&§:Sprite;
      
      private var §3!L§:Boolean = true;
      
      private var §7#l§:uint;
      
      private var §7!#§:Boolean;
      
      private var §'#w§:§0"s§;
      
      private var §&#1§:§0"s§;
      
      public function §+$=§(param1:Object, param2:String)
      {
         var _loc3_:§6$'§ = null;
         var _loc4_:Object = null;
         this.§;p§ = new Vector.<§6$'§>();
         super();
         this.§#"^§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;$'§ = §+#I§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;$'§ = §!$#§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+!=§(_loc4_);
               if(_loc3_)
               {
                  this.§;p§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§;p§)
            {
               if(_loc3_ is §2=§)
               {
                  (_loc3_ as §2=§).setSize(this.§ ";§,this.§;!U§);
                  (_loc3_ as §2=§).§4^§ = this.§3!L§;
               }
               else if(_loc3_ is §^#s§)
               {
                  (_loc3_ as §^#s§).setSize(this.§ ";§,this.§;!U§);
                  (_loc3_ as §^#s§).§'"m§ = this.§3!L§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      private function §+!=§(param1:Object) : §6$'§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §6$'§.§8#A§:
               return new §^#s§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §6$'§.§3p§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2=§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §6$'§.§,G§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §@'§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §6$'§.§,b§:
               return new §;#&§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §6$'§.§-E§:
               this.§>$!§ = param1.time * 1000;
               break;
            case §6$'§.§5t§:
               this.§ ";§ = param1.width;
               this.§;!U§ = param1.height;
               break;
            case §6$'§.§?U§:
               this.§3!L§ = false;
               break;
            case §6$'§.§1#L§:
               this.§3!L§ = true;
               break;
            case §6$'§.§'s§:
               this.§7#l§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         this.§;p§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§'$&§)
         {
            this.§'$&§ = new Sprite();
         }
         this.§#"^§ += param1;
         var _loc2_:int = this.§;p§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§;p§[_loc2_].update(this.§#"^§,this.§'$&§,this.§>!4§))
            {
               this.§;p§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2,§();
         this.§`"M§();
         this.§4"z§();
         return this.§#"^§ < this.§>$!§;
      }
      
      private function §4"z§() : void
      {
         var _loc1_:int = Starling.§'"l§.height;
         var _loc2_:int = Starling.§'"l§.width;
         var _loc3_:Number = §!#A§.§+K§;
         var _loc4_:Number = §!#A§.§5O§;
         var _loc5_:int = (_loc1_ - this.§;!U§ * _loc3_) / _loc3_;
         this.§'$&§.scaleX = this.§'$&§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§'$&§.y = _loc5_ >> 1;
      }
      
      private function §2,§() : void
      {
         Starling.§?$#§.color = this.§7#l§;
      }
      
      private function §`"M§() : void
      {
         if(this.§7!#§)
         {
            return;
         }
         var _loc1_:Sprite = this.§'$&§.getChildByName(§^#s§.§,#C§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§7!#§ = true;
      }
      
      public function clone(param1:§'0§) : §+$=§
      {
         var _loc3_:§6$'§ = null;
         var _loc2_:§+$=§ = new §+$=§(null,null);
         for each(_loc3_ in this.§;p§)
         {
            _loc2_.§;p§.push(_loc3_.clone());
         }
         _loc2_.§#"^§ = this.§#"^§;
         _loc2_.§>$!§ = this.§>$!§;
         _loc2_.§ ";§ = this.§ ";§;
         _loc2_.§;!U§ = this.§;!U§;
         _loc2_.§3!L§ = this.§3!L§;
         _loc2_.§7#l§ = this.§7#l§;
         _loc2_.§;$'§ = this.§;$'§;
         _loc2_.§>!4§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§;$'§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§;$'§ = param1;
      }
   }
}
