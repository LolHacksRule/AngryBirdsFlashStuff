package §9L§
{
   import §4!$§.§<!2§;
   import §5!l§.§ !D§;
   import §5x§.§3"§;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   
   public class §8!V§
   {
      
      public static const §>!§:String = "CutScene_Type_Intro";
      
      public static const §#!-§:String = "CutScene_Type_Outro";
      
      public static const §0!k§:String = "CutScene_Type_Final_Outro";
       
      
      private var §8!b§:§ !D§;
      
      private var §@^§:String;
      
      private var § !0§:Vector.<§<6§>;
      
      private var §6g§:Number;
      
      private var § !7§:Number;
      
      private var §;a§:Number;
      
      private var §"[§:Number;
      
      private var §`n§:Sprite;
      
      private var §1<§:Boolean = true;
      
      private var §2P§:uint;
      
      private var §+6§:Boolean;
      
      private var §4N§:§3"§;
      
      private var §-`§:§3"§;
      
      public function §8!V§(param1:Object, param2:String)
      {
         var _loc3_:§<6§ = null;
         var _loc4_:Object = null;
         this.§ !0§ = new Vector.<§<6§>();
         super();
         this.§6g§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§@^§ = §>!§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§@^§ = §#!-§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§#!'§(_loc4_);
               if(_loc3_)
               {
                  this.§ !0§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§ !0§)
            {
               if(_loc3_ is §!![§)
               {
                  (_loc3_ as §!![§).§3s§(this.§;a§,this.§"[§);
                  (_loc3_ as §!![§).§@m§ = this.§1<§;
               }
               else if(_loc3_ is §,!l§)
               {
                  (_loc3_ as §,!l§).§3s§(this.§;a§,this.§"[§);
                  (_loc3_ as §,!l§).§[z§ = this.§1<§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`n§;
      }
      
      private function §#!'§(param1:Object) : §<6§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §<6§.§;!C§:
               return new §,!l§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §<6§.§6![§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §!![§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §<6§.§!!F§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §[h§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §<6§.§+!B§:
               return new §'<§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §<6§.END:
               this.§ !7§ = param1.time * 1000;
               break;
            case §<6§.§]!K§:
               this.§;a§ = param1.width;
               this.§"[§ = param1.height;
               break;
            case §<6§.§+_§:
               this.§1<§ = false;
               break;
            case §<6§.§?!]§:
               this.§1<§ = true;
               break;
            case §<6§.§4!W§:
               this.§2P§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`n§)
         {
            this.§`n§.dispose();
            this.§`n§ = null;
         }
         this.§ !0§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`n§)
         {
            this.§`n§ = new Sprite();
         }
         this.§6g§ += param1;
         var _loc2_:int = this.§ !0§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§ !0§[_loc2_].update(this.§6g§,this.§`n§,this.§8!b§))
            {
               this.§ !0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&!M§();
         this.§[!P§();
         this.§!?§();
         return this.§6g§ < this.§ !7§;
      }
      
      private function §!?§() : void
      {
         var _loc1_:int = §<!2§.§[!]§.§%!l§.height;
         var _loc2_:Number = §=!@§.§',§;
         var _loc3_:Number = §=!@§.§6d§;
         var _loc4_:int = (_loc1_ - this.§"[§ * _loc2_) / _loc2_;
         this.§`n§.y = _loc4_ >> 1;
      }
      
      private function §&!M§() : void
      {
         §<!2§.§[!]§.color = this.§2P§;
      }
      
      private function §[!P§() : void
      {
         if(this.§+6§)
         {
            return;
         }
         var _loc1_:Sprite = this.§`n§.getChildByName(§,!l§.§[6§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§+6§ = true;
      }
      
      public function clone(param1:§ !D§) : §8!V§
      {
         var _loc3_:§<6§ = null;
         var _loc2_:§8!V§ = new §8!V§(null,null);
         for each(_loc3_ in this.§ !0§)
         {
            _loc2_.§ !0§.push(_loc3_.clone());
         }
         _loc2_.§6g§ = this.§6g§;
         _loc2_.§ !7§ = this.§ !7§;
         _loc2_.§;a§ = this.§;a§;
         _loc2_.§"[§ = this.§"[§;
         _loc2_.§1<§ = this.§1<§;
         _loc2_.§2P§ = this.§2P§;
         _loc2_.§@^§ = this.§@^§;
         _loc2_.§8!b§ = param1;
         return _loc2_;
      }
      
      public function get §1!9§() : String
      {
         return this.§@^§;
      }
      
      public function set §1!9§(param1:String) : void
      {
         this.§@^§ = param1;
      }
   }
}
