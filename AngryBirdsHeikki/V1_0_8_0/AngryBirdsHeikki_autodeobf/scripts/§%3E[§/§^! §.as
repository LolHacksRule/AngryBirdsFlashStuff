package §>[§
{
   import §!v§.§7[§;
   import §#!T§.§&2§;
   import §=!E§.§,!@§;
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §^! §
   {
      
      public static const §^!G§:String = "CutScene_Type_Intro";
      
      public static const §?r§:String = "CutScene_Type_Outro";
      
      public static const §!i§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>8§:§0!d§;
      
      private var §6x§:String;
      
      private var §+!e§:Vector.<§%!U§>;
      
      private var §[E§:Number;
      
      private var §=!%§:Number;
      
      private var §+L§:Number;
      
      private var §<!@§:Number;
      
      private var §"!B§:Sprite;
      
      private var §<c§:Boolean = true;
      
      private var §?!'§:uint;
      
      private var §?_§:Boolean;
      
      private var §+=§:§,!@§;
      
      private var §6! §:§,!@§;
      
      public function §^! §(param1:Object, param2:String)
      {
         var _loc3_:§%!U§ = null;
         var _loc4_:Object = null;
         this.§+!e§ = new Vector.<§%!U§>();
         super();
         this.§[E§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§6x§ = §^!G§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§6x§ = §?r§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§2A§(_loc4_);
               if(_loc3_)
               {
                  this.§+!e§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§+!e§)
            {
               if(_loc3_ is §=!e§)
               {
                  (_loc3_ as §=!e§).§"!C§(this.§+L§,this.§<!@§);
                  (_loc3_ as §=!e§).§[K§ = this.§<c§;
               }
               else if(_loc3_ is §;§)
               {
                  (_loc3_ as §;§).§"!C§(this.§+L§,this.§<!@§);
                  (_loc3_ as §;§).§8!D§ = this.§<c§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!B§;
      }
      
      private function §2A§(param1:Object) : §%!U§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §%!U§.§`![§:
               return new §;§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §%!U§.§#B§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §=!e§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §%!U§.§>&§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §0!;§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §%!U§.§]-§:
               return new §'#§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §%!U§.END:
               this.§=!%§ = param1.time * 1000;
               break;
            case §%!U§.§[!,§:
               this.§+L§ = param1.width;
               this.§<!@§ = param1.height;
               break;
            case §%!U§.§0c§:
               this.§<c§ = false;
               break;
            case §%!U§.§^q§:
               this.§<c§ = true;
               break;
            case §%!U§.§'F§:
               this.§?!'§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§"!B§)
         {
            this.§"!B§.dispose();
            this.§"!B§ = null;
         }
         this.§+!e§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§"!B§)
         {
            this.§"!B§ = new Sprite();
         }
         this.§[E§ += param1;
         var _loc2_:int = this.§+!e§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§+!e§[_loc2_].update(this.§[E§,this.§"!B§,this.§>8§))
            {
               this.§+!e§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§!!O§();
         this.§while§();
         this.§4!b§();
         return this.§[E§ < this.§=!%§;
      }
      
      private function §4!b§() : void
      {
         var _loc1_:int = §7[§.§&!J§.§ d§.height;
         var _loc2_:Number = §&2§.§]!`§;
         var _loc3_:Number = §&2§.§ `§;
         var _loc4_:int = (_loc1_ - this.§<!@§ * _loc2_) / _loc2_;
         this.§"!B§.y = _loc4_ >> 1;
      }
      
      private function §!!O§() : void
      {
         §7[§.§&!J§.color = this.§?!'§;
      }
      
      private function §while§() : void
      {
         if(this.§?_§)
         {
            return;
         }
         var _loc1_:Sprite = this.§"!B§.getChildByName(§;§.§,!E§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§?_§ = true;
      }
      
      public function clone(param1:§0!d§) : §^! §
      {
         var _loc3_:§%!U§ = null;
         var _loc2_:§^! § = new §^! §(null,null);
         for each(_loc3_ in this.§+!e§)
         {
            _loc2_.§+!e§.push(_loc3_.clone());
         }
         _loc2_.§[E§ = this.§[E§;
         _loc2_.§=!%§ = this.§=!%§;
         _loc2_.§+L§ = this.§+L§;
         _loc2_.§<!@§ = this.§<!@§;
         _loc2_.§<c§ = this.§<c§;
         _loc2_.§?!'§ = this.§?!'§;
         _loc2_.§6x§ = this.§6x§;
         _loc2_.§>8§ = param1;
         return _loc2_;
      }
      
      public function get §99§() : String
      {
         return this.§6x§;
      }
      
      public function set §99§(param1:String) : void
      {
         this.§6x§ = param1;
      }
   }
}
