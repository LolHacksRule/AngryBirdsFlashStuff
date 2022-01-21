package §%!a§
{
   import §"v§.§5!T§;
   import §&[§.§&!m§;
   import §2!g§.§2c§;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   
   public class §2!C§
   {
      
      public static const §-! §:String = "CutScene_Type_Intro";
      
      public static const §;!M§:String = "CutScene_Type_Outro";
      
      public static const §>!I§:String = "CutScene_Type_Final_Outro";
       
      
      private var §`k§:§&!m§;
      
      private var §;!C§:String;
      
      private var §3r§:Vector.<§`!3§>;
      
      private var §=!<§:Number;
      
      private var §1!9§:Number;
      
      private var §0F§:Number;
      
      private var §;;§:Number;
      
      private var §[8§:Sprite;
      
      private var §-!F§:Boolean = true;
      
      private var §3K§:uint;
      
      private var §^!V§:Boolean;
      
      private var §<u§:§2c§;
      
      private var §+!P§:§2c§;
      
      public function §2!C§(param1:Object, param2:String)
      {
         var _loc3_:§`!3§ = null;
         var _loc4_:Object = null;
         this.§3r§ = new Vector.<§`!3§>();
         super();
         this.§=!<§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;!C§ = §-! §;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;!C§ = §;!M§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§&P§(_loc4_);
               if(_loc3_)
               {
                  this.§3r§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§3r§)
            {
               if(_loc3_ is §8c§)
               {
                  (_loc3_ as §8c§).§6!@§(this.§0F§,this.§;;§);
                  (_loc3_ as §8c§).§8!M§ = this.§-!F§;
               }
               else if(_loc3_ is §,!N§)
               {
                  (_loc3_ as §,!N§).§6!@§(this.§0F§,this.§;;§);
                  (_loc3_ as §,!N§).§7d§ = this.§-!F§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§[8§;
      }
      
      private function §&P§(param1:Object) : §`!3§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §`!3§.§@!K§:
               return new §,!N§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §`!3§.§1!`§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8c§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §`!3§.§!!A§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new § ^§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §`!3§.§'!V§:
               return new §0l§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §`!3§.END:
               this.§1!9§ = param1.time * 1000;
               break;
            case §`!3§.§6!$§:
               this.§0F§ = param1.width;
               this.§;;§ = param1.height;
               break;
            case §`!3§.§[!1§:
               this.§-!F§ = false;
               break;
            case §`!3§.§6!b§:
               this.§-!F§ = true;
               break;
            case §`!3§.§^!Y§:
               this.§3K§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§[8§)
         {
            this.§[8§.dispose();
            this.§[8§ = null;
         }
         this.§3r§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§[8§)
         {
            this.§[8§ = new Sprite();
         }
         this.§=!<§ += param1;
         var _loc2_:int = this.§3r§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§3r§[_loc2_].update(this.§=!<§,this.§[8§,this.§`k§))
            {
               this.§3r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§1!'§();
         this.§^?§();
         this.§!3§();
         return this.§=!<§ < this.§1!9§;
      }
      
      private function §!3§() : void
      {
         var _loc1_:int = §5!T§.§!e§.§@!j§.height;
         var _loc2_:Number = §<H§.§6C§;
         var _loc3_:Number = §<H§.§^d§;
         var _loc4_:int = (_loc1_ - this.§;;§ * _loc2_) / _loc2_;
         this.§[8§.y = _loc4_ >> 1;
      }
      
      private function §1!'§() : void
      {
         §5!T§.§!e§.color = this.§3K§;
      }
      
      private function §^?§() : void
      {
         if(this.§^!V§)
         {
            return;
         }
         var _loc1_:Sprite = this.§[8§.getChildByName(§,!N§.§+!V§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^!V§ = true;
      }
      
      public function clone(param1:§&!m§) : §2!C§
      {
         var _loc3_:§`!3§ = null;
         var _loc2_:§2!C§ = new §2!C§(null,null);
         for each(_loc3_ in this.§3r§)
         {
            _loc2_.§3r§.push(_loc3_.clone());
         }
         _loc2_.§=!<§ = this.§=!<§;
         _loc2_.§1!9§ = this.§1!9§;
         _loc2_.§0F§ = this.§0F§;
         _loc2_.§;;§ = this.§;;§;
         _loc2_.§-!F§ = this.§-!F§;
         _loc2_.§3K§ = this.§3K§;
         _loc2_.§;!C§ = this.§;!C§;
         _loc2_.§`k§ = param1;
         return _loc2_;
      }
      
      public function get §>3§() : String
      {
         return this.§;!C§;
      }
      
      public function set §>3§(param1:String) : void
      {
         this.§;!C§ = param1;
      }
   }
}
