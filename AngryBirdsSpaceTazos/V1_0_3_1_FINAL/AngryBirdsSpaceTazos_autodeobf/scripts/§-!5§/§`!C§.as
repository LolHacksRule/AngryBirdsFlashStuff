package §-!5§
{
   import §1f§.§9H§;
   import §4"@§.§6p§;
   import §4"@§.Sprite;
   import §7!C§.§8!w§;
   import §^e§.§0"1§;
   
   public class §`!C§
   {
      
      public static const §@J§:String = "CutScene_Type_Intro";
      
      public static const §7s§:String = "CutScene_Type_Outro";
      
      public static const §'!r§:String = "CutScene_Type_Final_Outro";
       
      
      private var §#!v§:§0"1§;
      
      private var §!!=§:String;
      
      private var §>!e§:Vector.<§6!t§>;
      
      private var §+!a§:Number;
      
      private var §5f§:Number;
      
      private var §'!K§:Number;
      
      private var §%O§:Number;
      
      private var §9A§:Sprite;
      
      private var §'"E§:Boolean = true;
      
      private var §`,§:uint;
      
      private var §-"4§:Boolean;
      
      private var §&!F§:§6p§;
      
      private var §`S§:§6p§;
      
      public function §`!C§(param1:Object, param2:String)
      {
         var _loc3_:§6!t§ = null;
         var _loc4_:Object = null;
         this.§>!e§ = new Vector.<§6!t§>();
         super();
         this.§+!a§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§!!=§ = §@J§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§!!=§ = §7s§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§!!F§(_loc4_);
               if(_loc3_)
               {
                  this.§>!e§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§>!e§)
            {
               if(_loc3_ is §4!X§)
               {
                  (_loc3_ as §4!X§).setSize(this.§'!K§,this.§%O§);
                  (_loc3_ as §4!X§).§'";§ = this.§'"E§;
               }
               else if(_loc3_ is §%!v§)
               {
                  (_loc3_ as §%!v§).setSize(this.§'!K§,this.§%O§);
                  (_loc3_ as §%!v§).§>",§ = this.§'"E§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      private function §!!F§(param1:Object) : §6!t§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §6!t§.§4&§:
               return new §%!v§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §6!t§.§[!_§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §4!X§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §6!t§.§7!n§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §&!=§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §6!t§.§6!w§:
               return new §[!Z§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §6!t§.§6!s§:
               this.§5f§ = param1.time * 1000;
               break;
            case §6!t§.§;s§:
               this.§'!K§ = param1.width;
               this.§%O§ = param1.height;
               break;
            case §6!t§.§1!f§:
               this.§'"E§ = false;
               break;
            case §6!t§.§'!,§:
               this.§'"E§ = true;
               break;
            case §6!t§.§1!H§:
               this.§`,§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
         this.§>!e§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§9A§)
         {
            this.§9A§ = new Sprite();
         }
         this.§+!a§ += param1;
         var _loc2_:int = this.§>!e§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§>!e§[_loc2_].update(this.§+!a§,this.§9A§,this.§#!v§))
            {
               this.§>!e§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[w§();
         this.§@!A§();
         this.§package§();
         return this.§+!a§ < this.§5f§;
      }
      
      private function §package§() : void
      {
         var _loc1_:int = §9H§.§#!%§.height;
         var _loc2_:Number = §8!w§.§70§;
         var _loc3_:Number = §8!w§.§<"B§;
         var _loc4_:int = (_loc1_ - this.§%O§ * _loc2_) / _loc2_;
         this.§9A§.y = _loc4_ >> 1;
      }
      
      private function §[w§() : void
      {
         §9H§.§0"'§.color = this.§`,§;
      }
      
      private function §@!A§() : void
      {
         if(this.§-"4§)
         {
            return;
         }
         var _loc1_:Sprite = this.§9A§.getChildByName(§%!v§.§8!r§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§-"4§ = true;
      }
      
      public function clone(param1:§0"1§) : §`!C§
      {
         var _loc3_:§6!t§ = null;
         var _loc2_:§`!C§ = new §`!C§(null,null);
         for each(_loc3_ in this.§>!e§)
         {
            _loc2_.§>!e§.push(_loc3_.clone());
         }
         _loc2_.§+!a§ = this.§+!a§;
         _loc2_.§5f§ = this.§5f§;
         _loc2_.§'!K§ = this.§'!K§;
         _loc2_.§%O§ = this.§%O§;
         _loc2_.§'"E§ = this.§'"E§;
         _loc2_.§`,§ = this.§`,§;
         _loc2_.§!!=§ = this.§!!=§;
         _loc2_.§#!v§ = param1;
         return _loc2_;
      }
      
      public function get §=%§() : String
      {
         return this.§!!=§;
      }
      
      public function set §=%§(param1:String) : void
      {
         this.§!!=§ = param1;
      }
   }
}
