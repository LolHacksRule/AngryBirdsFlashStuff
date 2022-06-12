package §8!w§
{
   import § !V§.§7!P§;
   import §0!F§.§^d§;
   import §]!2§.§?"2§;
   import §]!2§.Sprite;
   import §`%§.§8!0§;
   
   public class §-G§
   {
      
      public static const §#?§:String = "CutScene_Type_Intro";
      
      public static const §+!s§:String = "CutScene_Type_Outro";
      
      public static const §<!t§:String = "CutScene_Type_Final_Outro";
       
      
      private var § d§:§7!P§;
      
      private var §?5§:String;
      
      private var §0j§:Vector.<§&p§>;
      
      private var §<h§:Number;
      
      private var §8!h§:Number;
      
      private var §=_§:Number;
      
      private var §!,§:Number;
      
      private var §`!-§:Sprite;
      
      private var §2!9§:Boolean = true;
      
      private var §6"1§:uint;
      
      private var §4@§:Boolean;
      
      private var §-u§:§?"2§;
      
      private var §^`§:§?"2§;
      
      public function §-G§(param1:Object, param2:String)
      {
         var _loc3_:§&p§ = null;
         var _loc4_:Object = null;
         this.§0j§ = new Vector.<§&p§>();
         super();
         this.§<h§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§?5§ = §#?§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§?5§ = §+!s§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§@L§(_loc4_);
               if(_loc3_)
               {
                  this.§0j§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0j§)
            {
               if(_loc3_ is §6!B§)
               {
                  (_loc3_ as §6!B§).setSize(this.§=_§,this.§!,§);
                  (_loc3_ as §6!B§).§1!d§ = this.§2!9§;
               }
               else if(_loc3_ is §4§)
               {
                  (_loc3_ as §4§).setSize(this.§=_§,this.§!,§);
                  (_loc3_ as §4§).§-!%§ = this.§2!9§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`!-§;
      }
      
      private function §@L§(param1:Object) : §&p§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §&p§.§=!k§:
               return new §4§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §&p§.§;!c§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §6!B§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §&p§.§ !Z§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §@H§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §&p§.§3h§:
               return new §7!e§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §&p§.END:
               this.§8!h§ = param1.time * 1000;
               break;
            case §&p§.§<+§:
               this.§=_§ = param1.width;
               this.§!,§ = param1.height;
               break;
            case §&p§.§?=§:
               this.§2!9§ = false;
               break;
            case §&p§.§3!1§:
               this.§2!9§ = true;
               break;
            case §&p§.§;b§:
               this.§6"1§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`!-§)
         {
            this.§`!-§.dispose();
            this.§`!-§ = null;
         }
         this.§0j§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`!-§)
         {
            this.§`!-§ = new Sprite();
         }
         this.§<h§ += param1;
         var _loc2_:int = this.§0j§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0j§[_loc2_].update(this.§<h§,this.§`!-§,this.§ d§))
            {
               this.§0j§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^!#§();
         this.§9!v§();
         this.§!!+§();
         return this.§<h§ < this.§8!h§;
      }
      
      private function §!!+§() : void
      {
         var _loc1_:int = §^d§.§+!f§.§#%§.height;
         var _loc2_:Number = §8!0§.§&!_§;
         var _loc3_:Number = §8!0§.§6S§;
         var _loc4_:int = (_loc1_ - this.§!,§ * _loc2_) / _loc2_;
         this.§`!-§.y = _loc4_ >> 1;
      }
      
      private function §^!#§() : void
      {
         §^d§.§+!f§.color = this.§6"1§;
      }
      
      private function §9!v§() : void
      {
         if(this.§4@§)
         {
            return;
         }
         var _loc1_:Sprite = this.§`!-§.getChildByName(§4§.§4!0§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§4@§ = true;
      }
      
      public function clone(param1:§7!P§) : §-G§
      {
         var _loc3_:§&p§ = null;
         var _loc2_:§-G§ = new §-G§(null,null);
         for each(_loc3_ in this.§0j§)
         {
            _loc2_.§0j§.push(_loc3_.clone());
         }
         _loc2_.§<h§ = this.§<h§;
         _loc2_.§8!h§ = this.§8!h§;
         _loc2_.§=_§ = this.§=_§;
         _loc2_.§!,§ = this.§!,§;
         _loc2_.§2!9§ = this.§2!9§;
         _loc2_.§6"1§ = this.§6"1§;
         _loc2_.§?5§ = this.§?5§;
         _loc2_.§ d§ = param1;
         return _loc2_;
      }
      
      public function get §>s§() : String
      {
         return this.§?5§;
      }
      
      public function set §>s§(param1:String) : void
      {
         this.§?5§ = param1;
      }
   }
}
