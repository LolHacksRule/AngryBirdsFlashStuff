package §"",§
{
   import §-![§.§5!<§;
   import §-![§.Sprite;
   import §6`§.§2a§;
   import §=!6§.§+8§;
   import com.angrybirds.§4"6§;
   
   public class §4" §
   {
      
      public static const §%!3§:String = "CutScene_Type_Intro";
      
      public static const §";§:String = "CutScene_Type_Outro";
      
      public static const §"t§:String = "CutScene_Type_Final_Outro";
       
      
      private var §1!5§:§2a§;
      
      private var §7",§:String;
      
      private var §@N§:Vector.<§`=§>;
      
      private var §3p§:Number;
      
      private var §1!R§:Number;
      
      private var §""7§:Number;
      
      private var §%>§:Number;
      
      private var §[<§:Sprite;
      
      private var §>!I§:Boolean = true;
      
      private var §`!R§:uint;
      
      private var §&!v§:Boolean;
      
      private var §return§:§5!<§;
      
      private var §;!u§:§5!<§;
      
      public function §4" §(param1:Object, param2:String)
      {
         var _loc3_:§`=§ = null;
         var _loc4_:Object = null;
         this.§@N§ = new Vector.<§`=§>();
         super();
         this.§3p§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§7",§ = §%!3§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§7",§ = §";§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§6"5§(_loc4_);
               if(_loc3_)
               {
                  this.§@N§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§@N§)
            {
               if(_loc3_ is §?=§)
               {
                  (_loc3_ as §?=§).setSize(this.§""7§,this.§%>§);
                  (_loc3_ as §?=§).horizontal = this.§>!I§;
               }
               else if(_loc3_ is §[!0§)
               {
                  (_loc3_ as §[!0§).setSize(this.§""7§,this.§%>§);
                  (_loc3_ as §[!0§).§;0§ = this.§>!I§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§[<§;
      }
      
      private function §6"5§(param1:Object) : §`=§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §`=§.§,,§:
               return new §[!0§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §`=§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §?=§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §`=§.§=!r§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §8Z§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §`=§.§]!N§:
               return new §9!0§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §`=§.END:
               this.§1!R§ = param1.time * 1000;
               break;
            case §`=§.§2!8§:
               this.§""7§ = param1.width;
               this.§%>§ = param1.height;
               break;
            case §`=§.§;8§:
               this.§>!I§ = false;
               break;
            case §`=§.§]!2§:
               this.§>!I§ = true;
               break;
            case §`=§.§,!a§:
               this.§`!R§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§[<§)
         {
            this.§[<§.dispose();
            this.§[<§ = null;
         }
         this.§@N§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§[<§)
         {
            this.§[<§ = new Sprite();
         }
         this.§3p§ += param1;
         var _loc2_:int = this.§@N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§@N§[_loc2_].update(this.§3p§,this.§[<§,this.§1!5§))
            {
               this.§@N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^!9§();
         this.§!8§();
         this.§7w§();
         return this.§3p§ < this.§1!R§;
      }
      
      private function §7w§() : void
      {
         var _loc1_:int = §+8§.§7!S§.height;
         var _loc2_:Number = §4"6§.§8!N§;
         var _loc3_:Number = §4"6§.§&!D§;
         var _loc4_:int = (_loc1_ - this.§%>§ * _loc2_) / _loc2_;
         this.§[<§.y = _loc4_ >> 1;
      }
      
      private function §^!9§() : void
      {
         §+8§.§0j§.color = this.§`!R§;
      }
      
      private function §!8§() : void
      {
         if(this.§&!v§)
         {
            return;
         }
         var _loc1_:Sprite = this.§[<§.getChildByName(§[!0§.§7>§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§&!v§ = true;
      }
      
      public function clone(param1:§2a§) : §4" §
      {
         var _loc3_:§`=§ = null;
         var _loc2_:§4" § = new §4" §(null,null);
         for each(_loc3_ in this.§@N§)
         {
            _loc2_.§@N§.push(_loc3_.clone());
         }
         _loc2_.§3p§ = this.§3p§;
         _loc2_.§1!R§ = this.§1!R§;
         _loc2_.§""7§ = this.§""7§;
         _loc2_.§%>§ = this.§%>§;
         _loc2_.§>!I§ = this.§>!I§;
         _loc2_.§`!R§ = this.§`!R§;
         _loc2_.§7",§ = this.§7",§;
         _loc2_.§1!5§ = param1;
         return _loc2_;
      }
      
      public function get §,W§() : String
      {
         return this.§7",§;
      }
      
      public function set §,W§(param1:String) : void
      {
         this.§7",§ = param1;
      }
   }
}
