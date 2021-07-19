package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.§ !f§;
   import §6![§.Sprite;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   
   public class §?!Z§
   {
      
      public static const §!^§:String = "CutScene_Type_Intro";
      
      public static const §-!o§:String = "CutScene_Type_Outro";
      
      public static const §extends§:String = "CutScene_Type_Final_Outro";
       
      
      private var §`8§:§5!x§;
      
      private var §9m§:String;
      
      private var §0T§:Vector.<§0!c§>;
      
      private var §?W§:Number;
      
      private var §0"§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §#e§:Sprite;
      
      private var §`b§:Boolean = true;
      
      private var §,!o§:uint;
      
      private var §4I§:Boolean;
      
      private var §^!m§:§ !f§;
      
      private var §@k§:§ !f§;
      
      public function §?!Z§(param1:Object, param2:String)
      {
         var _loc3_:§0!c§ = null;
         var _loc4_:Object = null;
         this.§0T§ = new Vector.<§0!c§>();
         super();
         this.§?W§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§9m§ = §!^§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§9m§ = §-!o§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§7e§(_loc4_);
               if(_loc3_)
               {
                  this.§0T§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0T§)
            {
               if(_loc3_ is §7!6§)
               {
                  (_loc3_ as §7!6§).setSize(this.§<`§,this.§#!A§);
                  (_loc3_ as §7!6§).horizontal = this.§`b§;
               }
               else if(_loc3_ is §=!e§)
               {
                  (_loc3_ as §=!e§).setSize(this.§<`§,this.§#!A§);
                  (_loc3_ as §=!e§).§2z§ = this.§`b§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      private function §7e§(param1:Object) : §0!c§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §0!c§.§"h§:
               return new §=!e§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §0!c§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §7!6§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §0!c§.§@""§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §,Y§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §0!c§.§2!Q§:
               return new §+y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §0!c§.END:
               this.§0"§ = param1.time * 1000;
               break;
            case §0!c§.§=!m§:
               this.§<`§ = param1.width;
               this.§#!A§ = param1.height;
               break;
            case §0!c§.§2!%§:
               this.§`b§ = false;
               break;
            case §0!c§.§`"!§:
               this.§`b§ = true;
               break;
            case §0!c§.§7&§:
               this.§,!o§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§#e§)
         {
            this.§#e§.dispose();
            this.§#e§ = null;
         }
         this.§0T§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§#e§)
         {
            this.§#e§ = new Sprite();
         }
         this.§?W§ += param1;
         var _loc2_:int = this.§0T§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0T§[_loc2_].update(this.§?W§,this.§#e§,this.§`8§))
            {
               this.§0T§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[!A§();
         this.§36§();
         this.§'!§();
         return this.§?W§ < this.§0"§;
      }
      
      private function §'!§() : void
      {
         var _loc1_:int = §1"&§.§>!m§.height;
         var _loc2_:Number = §&!"§.§,!C§;
         var _loc3_:Number = §&!"§.§3H§;
         var _loc4_:int = (_loc1_ - this.§#!A§ * _loc2_) / _loc2_;
         this.§#e§.y = _loc4_ >> 1;
      }
      
      private function §[!A§() : void
      {
         §1"&§.§1i§.color = this.§,!o§;
      }
      
      private function §36§() : void
      {
         if(this.§4I§)
         {
            return;
         }
         var _loc1_:Sprite = this.§#e§.getChildByName(§=!e§.§`]§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§4I§ = true;
      }
      
      public function clone(param1:§5!x§) : §?!Z§
      {
         var _loc3_:§0!c§ = null;
         var _loc2_:§?!Z§ = new §?!Z§(null,null);
         for each(_loc3_ in this.§0T§)
         {
            _loc2_.§0T§.push(_loc3_.clone());
         }
         _loc2_.§?W§ = this.§?W§;
         _loc2_.§0"§ = this.§0"§;
         _loc2_.§<`§ = this.§<`§;
         _loc2_.§#!A§ = this.§#!A§;
         _loc2_.§`b§ = this.§`b§;
         _loc2_.§,!o§ = this.§,!o§;
         _loc2_.§9m§ = this.§9m§;
         _loc2_.§`8§ = param1;
         return _loc2_;
      }
      
      public function get §^R§() : String
      {
         return this.§9m§;
      }
      
      public function set §^R§(param1:String) : void
      {
         this.§9m§ = param1;
      }
   }
}
