package §2"a§
{
   import §!!U§.§2"D§;
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §7!F§.§7§;
   import com.angrybirds.§,!q§;
   
   public class §9E§
   {
      
      public static const §9b§:String = "CutScene_Type_Intro";
      
      public static const §#'§:String = "CutScene_Type_Outro";
      
      public static const §2!T§:String = "CutScene_Type_Final_Outro";
       
      
      private var §6V§:§7#5§;
      
      private var §`#A§:String;
      
      private var §9!S§:Vector.<§,^§>;
      
      private var §#T§:Number;
      
      private var §1!]§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §%G§:Sprite;
      
      private var §5#E§:Boolean = true;
      
      private var §2c§:uint;
      
      private var §8§:Boolean;
      
      private var § I§:§2"D§;
      
      private var §3#F§:§2"D§;
      
      public function §9E§(param1:Object, param2:String)
      {
         var _loc3_:§,^§ = null;
         var _loc4_:Object = null;
         this.§9!S§ = new Vector.<§,^§>();
         super();
         this.§#T§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§`#A§ = §9b§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§`#A§ = §#'§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§%A§(_loc4_);
               if(_loc3_)
               {
                  this.§9!S§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§9!S§)
            {
               if(_loc3_ is §<!f§)
               {
                  (_loc3_ as §<!f§).setSize(this.§6"?§,this.§[!4§);
                  (_loc3_ as §<!f§).§[S§ = this.§5#E§;
               }
               else if(_loc3_ is §%#`§)
               {
                  (_loc3_ as §%#`§).setSize(this.§6"?§,this.§[!4§);
                  (_loc3_ as §%#`§).§?"`§ = this.§5#E§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      private function §%A§(param1:Object) : §,^§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,^§.§7!d§:
               return new §%#`§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,^§.§ if§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §<!f§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,^§.§6!C§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §3"E§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,^§.§""%§:
               return new §["8§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,^§.END:
               this.§1!]§ = param1.time * 1000;
               break;
            case §,^§.§6"X§:
               this.§6"?§ = param1.width;
               this.§[!4§ = param1.height;
               break;
            case §,^§.§<"V§:
               this.§5#E§ = false;
               break;
            case §,^§.§4#K§:
               this.§5#E§ = true;
               break;
            case §,^§.§3#N§:
               this.§2c§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
         this.§9!S§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§%G§)
         {
            this.§%G§ = new Sprite();
         }
         this.§#T§ += param1;
         var _loc2_:int = this.§9!S§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§9!S§[_loc2_].update(this.§#T§,this.§%G§,this.§6V§))
            {
               this.§9!S§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§5# §();
         this.§`s§();
         this.§]#6§();
         return this.§#T§ < this.§1!]§;
      }
      
      private function §]#6§() : void
      {
         var _loc1_:int = §3#J§.§=#_§.height;
         var _loc2_:Number = §,!q§.§6G§;
         var _loc3_:Number = §,!q§.§!"N§;
         var _loc4_:int = (_loc1_ - this.§[!4§ * _loc2_) / _loc2_;
         this.§%G§.y = _loc4_ >> 1;
      }
      
      private function §5# §() : void
      {
         §3#J§.§2!C§.color = this.§2c§;
      }
      
      private function §`s§() : void
      {
         if(this.§8§)
         {
            return;
         }
         var _loc1_:Sprite = this.§%G§.getChildByName(§%#`§.§1R§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§8§ = true;
      }
      
      public function clone(param1:§7#5§) : §9E§
      {
         var _loc3_:§,^§ = null;
         var _loc2_:§9E§ = new §9E§(null,null);
         for each(_loc3_ in this.§9!S§)
         {
            _loc2_.§9!S§.push(_loc3_.clone());
         }
         _loc2_.§#T§ = this.§#T§;
         _loc2_.§1!]§ = this.§1!]§;
         _loc2_.§6"?§ = this.§6"?§;
         _loc2_.§[!4§ = this.§[!4§;
         _loc2_.§5#E§ = this.§5#E§;
         _loc2_.§2c§ = this.§2c§;
         _loc2_.§`#A§ = this.§`#A§;
         _loc2_.§6V§ = param1;
         return _loc2_;
      }
      
      public function get §""Y§() : String
      {
         return this.§`#A§;
      }
      
      public function set §""Y§(param1:String) : void
      {
         this.§`#A§ = param1;
      }
   }
}
