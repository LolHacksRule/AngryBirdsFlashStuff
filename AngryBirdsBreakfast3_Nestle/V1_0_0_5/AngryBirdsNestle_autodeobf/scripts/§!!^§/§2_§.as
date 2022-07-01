package §!!^§
{
   import §,!q§.§#!H§;
   import §,!q§.Sprite;
   import §-!Y§.§%!%§;
   import §-!b§.§[E§;
   import com.angrybirds.§6!E§;
   
   public class §2_§
   {
      
      public static const §^" §:String = "CutScene_Type_Intro";
      
      public static const §#c§:String = "CutScene_Type_Outro";
      
      public static const §=m§:String = "CutScene_Type_Final_Outro";
       
      
      private var §@=§:§[E§;
      
      private var §8!U§:String;
      
      private var §][§:Vector.<§,!@§>;
      
      private var §"3§:Number;
      
      private var §7l§:Number;
      
      private var §9z§:Number;
      
      private var §8#§:Number;
      
      private var §2!&§:Sprite;
      
      private var §8Z§:Boolean = true;
      
      private var §?t§:uint;
      
      private var §%!q§:Boolean;
      
      private var §']§:§#!H§;
      
      private var §>"+§:§#!H§;
      
      public function §2_§(param1:Object, param2:String)
      {
         var _loc3_:§,!@§ = null;
         var _loc4_:Object = null;
         this.§][§ = new Vector.<§,!@§>();
         super();
         this.§"3§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§8!U§ = §^" §;
            }
            else if(param2.search("complete") != -1)
            {
               this.§8!U§ = §#c§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+!a§(_loc4_);
               if(_loc3_)
               {
                  this.§][§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§][§)
            {
               if(_loc3_ is §^!9§)
               {
                  (_loc3_ as §^!9§).setSize(this.§9z§,this.§8#§);
                  (_loc3_ as §^!9§).horizontal = this.§8Z§;
               }
               else if(_loc3_ is §@!^§)
               {
                  (_loc3_ as §@!^§).setSize(this.§9z§,this.§8#§);
                  (_loc3_ as §@!^§).§=!B§ = this.§8Z§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§2!&§;
      }
      
      private function §+!a§(param1:Object) : §,!@§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,!@§.§8!%§:
               return new §@!^§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,!@§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §^!9§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,!@§.§+!e§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §^! §(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,!@§.§&!f§:
               return new § !+§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,!@§.END:
               this.§7l§ = param1.time * 1000;
               break;
            case §,!@§.§?!#§:
               this.§9z§ = param1.width;
               this.§8#§ = param1.height;
               break;
            case §,!@§.§3!Z§:
               this.§8Z§ = false;
               break;
            case §,!@§.§in§:
               this.§8Z§ = true;
               break;
            case §,!@§.§]t§:
               this.§?t§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§2!&§)
         {
            this.§2!&§.dispose();
            this.§2!&§ = null;
         }
         this.§][§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§2!&§)
         {
            this.§2!&§ = new Sprite();
         }
         this.§"3§ += param1;
         var _loc2_:int = this.§][§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§][§[_loc2_].update(this.§"3§,this.§2!&§,this.§@=§))
            {
               this.§][§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§5k§();
         this.§&!o§();
         this.§,k§();
         return this.§"3§ < this.§7l§;
      }
      
      private function §,k§() : void
      {
         var _loc1_:int = §%!%§.§>"3§.height;
         var _loc2_:Number = §6!E§.§'!U§;
         var _loc3_:Number = §6!E§.§5!=§;
         var _loc4_:int = (_loc1_ - this.§8#§ * _loc2_) / _loc2_;
         this.§2!&§.y = _loc4_ >> 1;
      }
      
      private function §5k§() : void
      {
         §%!%§.§"T§.color = this.§?t§;
      }
      
      private function §&!o§() : void
      {
         if(this.§%!q§)
         {
            return;
         }
         var _loc1_:Sprite = this.§2!&§.getChildByName(§@!^§.§+4§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§%!q§ = true;
      }
      
      public function clone(param1:§[E§) : §2_§
      {
         var _loc3_:§,!@§ = null;
         var _loc2_:§2_§ = new §2_§(null,null);
         for each(_loc3_ in this.§][§)
         {
            _loc2_.§][§.push(_loc3_.clone());
         }
         _loc2_.§"3§ = this.§"3§;
         _loc2_.§7l§ = this.§7l§;
         _loc2_.§9z§ = this.§9z§;
         _loc2_.§8#§ = this.§8#§;
         _loc2_.§8Z§ = this.§8Z§;
         _loc2_.§?t§ = this.§?t§;
         _loc2_.§8!U§ = this.§8!U§;
         _loc2_.§@=§ = param1;
         return _loc2_;
      }
      
      public function get §+]§() : String
      {
         return this.§8!U§;
      }
      
      public function set §+]§(param1:String) : void
      {
         this.§8!U§ = param1;
      }
   }
}
