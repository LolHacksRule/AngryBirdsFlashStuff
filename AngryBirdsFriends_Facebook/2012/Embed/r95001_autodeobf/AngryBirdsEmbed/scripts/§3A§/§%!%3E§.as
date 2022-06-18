package §3A§
{
   import §10§.§#!4§;
   import §9!2§.§7N§;
   import §<k§.§!1§;
   import §<k§.Sprite;
   import §[n§.§?+§;
   
   public class §%!>§
   {
      
      public static const §&!§:String = "CutScene_Type_Intro";
      
      public static const §=A§:String = "CutScene_Type_Outro";
      
      public static const §9!,§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^s§:§?+§;
      
      private var §'!2§:String;
      
      private var §8!6§:Vector.<§-§>;
      
      private var §`!,§:Number;
      
      private var §4!>§:Number;
      
      private var §!0§:Number;
      
      private var §+K§:Number;
      
      private var §8!!§:Sprite;
      
      private var §6!$§:Boolean = true;
      
      private var §&F§:uint;
      
      private var §9f§:Boolean;
      
      private var §5!8§:§!1§;
      
      private var §2!A§:§!1§;
      
      public function §%!>§(param1:Object, param2:String)
      {
         var _loc3_:§-§ = null;
         var _loc4_:Object = null;
         this.§8!6§ = new Vector.<§-§>();
         super();
         this.§`!,§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§'!2§ = §&!§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§'!2§ = §=A§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§<!?§(_loc4_);
               if(_loc3_)
               {
                  this.§8!6§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§8!6§)
            {
               if(_loc3_ is §2z§)
               {
                  (_loc3_ as §2z§).setSize(this.§!0§,this.§+K§);
                  (_loc3_ as §2z§).§^i§ = this.§6!$§;
               }
               else if(_loc3_ is §'h§)
               {
                  (_loc3_ as §'h§).setSize(this.§!0§,this.§+K§);
                  (_loc3_ as §'h§).§8f§ = this.§6!$§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!!§;
      }
      
      private function §<!?§(param1:Object) : §-§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §-§.§'>§:
               return new §'h§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §-§.§;$§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2z§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §-§.§#!=§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §&u§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §-§.§^N§:
               return new §&X§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §-§.END:
               this.§4!>§ = param1.time * 1000;
               break;
            case §-§.§ 9§:
               this.§!0§ = param1.width;
               this.§+K§ = param1.height;
               break;
            case §-§.§`G§:
               this.§6!$§ = false;
               break;
            case §-§.§=Q§:
               this.§6!$§ = true;
               break;
            case §-§.§1c§:
               this.§&F§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8!!§)
         {
            this.§8!!§.dispose();
            this.§8!!§ = null;
         }
         this.§8!6§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8!!§)
         {
            this.§8!!§ = new Sprite();
         }
         this.§`!,§ += param1;
         var _loc2_:int = this.§8!6§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§8!6§[_loc2_].update(this.§`!,§,this.§8!!§,this.§^s§))
            {
               this.§8!6§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ o§();
         this.§^!C§();
         this.§''§();
         return this.§`!,§ < this.§4!>§;
      }
      
      private function §''§() : void
      {
         var _loc1_:int = §7N§.§17§.§-4§.height;
         var _loc2_:Number = §#!4§.§+!8§;
         var _loc3_:Number = §#!4§.§51§;
         var _loc4_:int = (_loc1_ - this.§+K§ * _loc2_) / _loc2_;
         this.§8!!§.y = _loc4_ >> 1;
      }
      
      private function § o§() : void
      {
         §7N§.§17§.color = this.§&F§;
      }
      
      private function §^!C§() : void
      {
         if(this.§9f§)
         {
            return;
         }
         var _loc1_:Sprite = this.§8!!§.getChildByName(§'h§.§?s§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§9f§ = true;
      }
      
      public function clone(param1:§?+§) : §%!>§
      {
         var _loc3_:§-§ = null;
         var _loc2_:§%!>§ = new §%!>§(null,null);
         for each(_loc3_ in this.§8!6§)
         {
            _loc2_.§8!6§.push(_loc3_.clone());
         }
         _loc2_.§`!,§ = this.§`!,§;
         _loc2_.§4!>§ = this.§4!>§;
         _loc2_.§!0§ = this.§!0§;
         _loc2_.§+K§ = this.§+K§;
         _loc2_.§6!$§ = this.§6!$§;
         _loc2_.§&F§ = this.§&F§;
         _loc2_.§'!2§ = this.§'!2§;
         _loc2_.§^s§ = param1;
         return _loc2_;
      }
      
      public function get §<!-§() : String
      {
         return this.§'!2§;
      }
      
      public function set §<!-§(param1:String) : void
      {
         this.§'!2§ = param1;
      }
   }
}
