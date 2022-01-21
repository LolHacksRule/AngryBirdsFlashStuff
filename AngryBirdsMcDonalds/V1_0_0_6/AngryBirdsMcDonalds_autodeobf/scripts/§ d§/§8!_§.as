package § d§
{
   import §#M§.§+!Z§;
   import §&!!§.§<!'§;
   import §2![§.§7Q§;
   import §2![§.Sprite;
   import §=!K§.§do§;
   
   public class §8!_§
   {
      
      public static const §-3§:String = "CutScene_Type_Intro";
      
      public static const §"!k§:String = "CutScene_Type_Outro";
      
      public static const §%,§:String = "CutScene_Type_Final_Outro";
       
      
      private var §"!,§:§<!'§;
      
      private var §5§:String;
      
      private var §?'§:Vector.<§,!+§>;
      
      private var §>!b§:Number;
      
      private var §<S§:Number;
      
      private var §3y§:Number;
      
      private var § 5§:Number;
      
      private var §%!l§:Sprite;
      
      private var §3!n§:Boolean = true;
      
      private var §0E§:uint;
      
      private var §"&§:Boolean;
      
      private var §`![§:§7Q§;
      
      private var §%g§:§7Q§;
      
      public function §8!_§(param1:Object, param2:String)
      {
         var _loc3_:§,!+§ = null;
         var _loc4_:Object = null;
         this.§?'§ = new Vector.<§,!+§>();
         super();
         this.§>!b§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§5§ = §-3§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§5§ = §"!k§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§6t§(_loc4_);
               if(_loc3_)
               {
                  this.§?'§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§?'§)
            {
               if(_loc3_ is §1O§)
               {
                  (_loc3_ as §1O§).§]f§(this.§3y§,this.§ 5§);
                  (_loc3_ as §1O§).§@!k§ = this.§3!n§;
               }
               else if(_loc3_ is §"!@§)
               {
                  (_loc3_ as §"!@§).§]f§(this.§3y§,this.§ 5§);
                  (_loc3_ as §"!@§).§#! § = this.§3!n§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!l§;
      }
      
      private function §6t§(param1:Object) : §,!+§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,!+§.§&!Z§:
               return new §"!@§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,!+§.§8!j§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §1O§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,!+§.§4!0§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §4N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,!+§.§[S§:
               return new §4<§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,!+§.END:
               this.§<S§ = param1.time * 1000;
               break;
            case §,!+§.§#Y§:
               this.§3y§ = param1.width;
               this.§ 5§ = param1.height;
               break;
            case §,!+§.§=F§:
               this.§3!n§ = false;
               break;
            case §,!+§.§?5§:
               this.§3!n§ = true;
               break;
            case §,!+§.§`Y§:
               this.§0E§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§%!l§)
         {
            this.§%!l§.dispose();
            this.§%!l§ = null;
         }
         this.§?'§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§%!l§)
         {
            this.§%!l§ = new Sprite();
         }
         this.§>!b§ += param1;
         var _loc2_:int = this.§?'§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§?'§[_loc2_].update(this.§>!b§,this.§%!l§,this.§"!,§))
            {
               this.§?'§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3!2§();
         this.§6!W§();
         this.§<!H§();
         return this.§>!b§ < this.§<S§;
      }
      
      private function §<!H§() : void
      {
         var _loc1_:int = §do§.§4!G§.§,w§.height;
         var _loc2_:Number = §+!Z§.§9!E§;
         var _loc3_:Number = §+!Z§.§4!k§;
         var _loc4_:int = (_loc1_ - this.§ 5§ * _loc2_) / _loc2_;
         this.§%!l§.y = _loc4_ >> 1;
      }
      
      private function §3!2§() : void
      {
         §do§.§4!G§.color = this.§0E§;
      }
      
      private function §6!W§() : void
      {
         if(this.§"&§)
         {
            return;
         }
         var _loc1_:Sprite = this.§%!l§.getChildByName(§"!@§.§1!o§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§"&§ = true;
      }
      
      public function clone(param1:§<!'§) : §8!_§
      {
         var _loc3_:§,!+§ = null;
         var _loc2_:§8!_§ = new §8!_§(null,null);
         for each(_loc3_ in this.§?'§)
         {
            _loc2_.§?'§.push(_loc3_.clone());
         }
         _loc2_.§>!b§ = this.§>!b§;
         _loc2_.§<S§ = this.§<S§;
         _loc2_.§3y§ = this.§3y§;
         _loc2_.§ 5§ = this.§ 5§;
         _loc2_.§3!n§ = this.§3!n§;
         _loc2_.§0E§ = this.§0E§;
         _loc2_.§5§ = this.§5§;
         _loc2_.§"!,§ = param1;
         return _loc2_;
      }
      
      public function get §^k§() : String
      {
         return this.§5§;
      }
      
      public function set §^k§(param1:String) : void
      {
         this.§5§ = param1;
      }
   }
}
