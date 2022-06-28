package §`!i§
{
   import §'!9§.§%!g§;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §<&§.§^b§;
   import §true§.§ _§;
   
   public class §,S§
   {
      
      public static const §03§:String = "CutScene_Type_Intro";
      
      public static const §+!Z§:String = "CutScene_Type_Outro";
      
      public static const §,-§:String = "CutScene_Type_Final_Outro";
       
      
      private var §;!t§:§,Q§;
      
      private var §#r§:String;
      
      private var §0!G§:Vector.<§8d§>;
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §8X§:Sprite;
      
      private var §&!Y§:Boolean = true;
      
      private var §,y§:uint;
      
      private var §]0§:Boolean;
      
      private var §!_§:§%!g§;
      
      private var §4!<§:§%!g§;
      
      public function §,S§(param1:Object, param2:String)
      {
         var _loc3_:§8d§ = null;
         var _loc4_:Object = null;
         this.§0!G§ = new Vector.<§8d§>();
         super();
         this.§=U§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§#r§ = §03§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§#r§ = §+!Z§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§5o§(_loc4_);
               if(_loc3_)
               {
                  this.§0!G§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0!G§)
            {
               if(_loc3_ is §9`§)
               {
                  (_loc3_ as §9`§).setSize(this.§'O§,this.§!!A§);
                  (_loc3_ as §9`§).§1!P§ = this.§&!Y§;
               }
               else if(_loc3_ is §;!@§)
               {
                  (_loc3_ as §;!@§).setSize(this.§'O§,this.§!!A§);
                  (_loc3_ as §;!@§).§@!?§ = this.§&!Y§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      private function §5o§(param1:Object) : §8d§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §8d§.§>!Y§:
               return new §;!@§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §8d§.§4'§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §9`§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §8d§.§!n§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §'B§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §8d§.§`!F§:
               return new §=y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §8d§.END:
               this.§[1§ = param1.time * 1000;
               break;
            case §8d§.§^!$§:
               this.§'O§ = param1.width;
               this.§!!A§ = param1.height;
               break;
            case §8d§.§>%§:
               this.§&!Y§ = false;
               break;
            case §8d§.§else §:
               this.§&!Y§ = true;
               break;
            case §8d§.§`J§:
               this.§,y§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§8X§)
         {
            this.§8X§.dispose();
            this.§8X§ = null;
         }
         this.§0!G§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§8X§)
         {
            this.§8X§ = new Sprite();
         }
         this.§=U§ += param1;
         var _loc2_:int = this.§0!G§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0!G§[_loc2_].update(this.§=U§,this.§8X§,this.§;!t§))
            {
               this.§0!G§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,D§();
         this.§?Z§();
         this.§@!t§();
         return this.§=U§ < this.§[1§;
      }
      
      private function §@!t§() : void
      {
         var _loc1_:int = §^b§.§9E§.§5t§.height;
         var _loc2_:Number = § _§.§0!2§;
         var _loc3_:Number = § _§.§[!Y§;
         var _loc4_:int = (_loc1_ - this.§!!A§ * _loc2_) / _loc2_;
         this.§8X§.y = _loc4_ >> 1;
      }
      
      private function §,D§() : void
      {
         §^b§.§9E§.color = this.§,y§;
      }
      
      private function §?Z§() : void
      {
         if(this.§]0§)
         {
            return;
         }
         var _loc1_:Sprite = this.§8X§.getChildByName(§;!@§.§ 1§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§]0§ = true;
      }
      
      public function clone(param1:§,Q§) : §,S§
      {
         var _loc3_:§8d§ = null;
         var _loc2_:§,S§ = new §,S§(null,null);
         for each(_loc3_ in this.§0!G§)
         {
            _loc2_.§0!G§.push(_loc3_.clone());
         }
         _loc2_.§=U§ = this.§=U§;
         _loc2_.§[1§ = this.§[1§;
         _loc2_.§'O§ = this.§'O§;
         _loc2_.§!!A§ = this.§!!A§;
         _loc2_.§&!Y§ = this.§&!Y§;
         _loc2_.§,y§ = this.§,y§;
         _loc2_.§#r§ = this.§#r§;
         _loc2_.§;!t§ = param1;
         return _loc2_;
      }
      
      public function get §+!'§() : String
      {
         return this.§#r§;
      }
      
      public function set §+!'§(param1:String) : void
      {
         this.§#r§ = param1;
      }
   }
}
