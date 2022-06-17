package §6Q§
{
   import §!6§.§4";§;
   import §!6§.Sprite;
   import §=!2§.§%"T§;
   import §]"P§.Starling;
   import §^"[§.§=#;§;
   
   public class §,!,§
   {
      
      public static const §9$$§:String = "CutScene_Type_Intro";
      
      public static const §9M§:String = "CutScene_Type_Outro";
      
      public static const §^!"§:String = "CutScene_Type_Final_Outro";
       
      
      private var §2!b§:§=#;§;
      
      private var §@"9§:String;
      
      private var §]"y§:Vector.<§?d§>;
      
      private var §7#U§:Number;
      
      private var §+"]§:Number;
      
      private var §@#Z§:Number;
      
      private var §+#j§:Number;
      
      private var § U§:Sprite;
      
      private var §+!Y§:Boolean = true;
      
      private var §6"w§:uint;
      
      private var §-#3§:Boolean;
      
      private var §1A§:§4";§;
      
      private var §%$§:§4";§;
      
      public function §,!,§(param1:Object, param2:String)
      {
         var _loc3_:§?d§ = null;
         var _loc4_:Object = null;
         this.§]"y§ = new Vector.<§?d§>();
         super();
         this.§7#U§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§@"9§ = §9$$§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§@"9§ = §9M§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§8!B§(_loc4_);
               if(_loc3_)
               {
                  this.§]"y§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]"y§)
            {
               if(_loc3_ is §1"A§)
               {
                  (_loc3_ as §1"A§).setSize(this.§@#Z§,this.§+#j§);
                  (_loc3_ as §1"A§).§4"z§ = this.§+!Y§;
               }
               else if(_loc3_ is §%!N§)
               {
                  (_loc3_ as §%!N§).setSize(this.§@#Z§,this.§+#j§);
                  (_loc3_ as §%!N§).§9$?§ = this.§+!Y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      private function §8!B§(param1:Object) : §?d§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §?d§.§8"P§:
               return new §%!N§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §?d§.§?"j§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §1"A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §?d§.§>"+§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §!!w§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §?d§.§3# §:
               this.§+"]§ = param1.time * 1000;
               break;
            case §?d§.§9U§:
               this.§@#Z§ = param1.width;
               this.§+#j§ = param1.height;
               break;
            case §?d§.§"#?§:
               this.§+!Y§ = false;
               break;
            case §?d§.§%#o§:
               this.§+!Y§ = true;
               break;
            case §?d§.§'$=§:
               this.§6"w§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
               break;
            default:
               break;
            case §?d§.§4"=§:
               return new §!$ §(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         this.§]"y§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ U§)
         {
            this.§ U§ = new Sprite();
         }
         this.§7#U§ += param1;
         var _loc2_:int = this.§]"y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]"y§[_loc2_].update(this.§7#U§,this.§ U§,this.§2!b§))
            {
               this.§]"y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;#Q§();
         this.§%!o§();
         this.§;"r§();
         return this.§7#U§ < this.§+"]§;
      }
      
      private function §;"r§() : void
      {
         var _loc1_:int = Starling.§]"A§.height;
         int(Starling.§]"A§.width);
         var _loc3_:Number = §%"T§.§7#W§;
         var _loc4_:Number = §%"T§.§"x§;
         var _loc5_:int = (_loc1_ - this.§+#j§ * _loc3_) / _loc3_;
         this.§ U§.scaleX = this.§ U§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§ U§.y = _loc5_ >> 1;
      }
      
      private function §;#Q§() : void
      {
         Starling.§3!I§.color = this.§6"w§;
      }
      
      private function §%!o§() : void
      {
         if(this.§-#3§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ U§.getChildByName(§%!N§.§,#9§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§-#3§ = true;
      }
      
      public function clone(param1:§=#;§) : §,!,§
      {
         var _loc3_:§?d§ = null;
         var _loc2_:§,!,§ = new §,!,§(null,null);
         for each(_loc3_ in this.§]"y§)
         {
            _loc2_.§]"y§.push(_loc3_.clone());
         }
         _loc2_.§7#U§ = this.§7#U§;
         _loc2_.§+"]§ = this.§+"]§;
         _loc2_.§@#Z§ = this.§@#Z§;
         _loc2_.§+#j§ = this.§+#j§;
         _loc2_.§+!Y§ = this.§+!Y§;
         _loc2_.§6"w§ = this.§6"w§;
         _loc2_.§@"9§ = this.§@"9§;
         _loc2_.§2!b§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§@"9§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§@"9§ = param1;
      }
   }
}
