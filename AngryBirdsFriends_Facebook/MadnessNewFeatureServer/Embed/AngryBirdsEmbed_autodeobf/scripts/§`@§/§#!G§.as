package §`@§
{
   import §#?§.§6!4§;
   import §,!,§.§2t§;
   import §90§.§0!'§;
   import §90§.Sprite;
   import §>!O§.§[+§;
   
   public class §#!G§
   {
      
      public static const §`!=§:String = "CutScene_Type_Intro";
      
      public static const §switch§:String = "CutScene_Type_Outro";
      
      public static const §![§:String = "CutScene_Type_Final_Outro";
       
      
      private var §[E§:§6!4§;
      
      private var §>;§:String;
      
      private var §]v§:Vector.<§[!"§>;
      
      private var §"<§:Number;
      
      private var §2>§:Number;
      
      private var §?U§:Number;
      
      private var §continue§:Number;
      
      private var §`8§:Sprite;
      
      private var §!!O§:Boolean = true;
      
      private var §3[§:uint;
      
      private var §!!>§:Boolean;
      
      private var §^! §:§0!'§;
      
      private var §-!=§:§0!'§;
      
      public function §#!G§(param1:Object, param2:String)
      {
         var _loc3_:§[!"§ = null;
         var _loc4_:Object = null;
         this.§]v§ = new Vector.<§[!"§>();
         super();
         this.§"<§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§>;§ = §`!=§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§>;§ = §switch§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§^y§(_loc4_);
               if(_loc3_)
               {
                  this.§]v§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]v§)
            {
               if(_loc3_ is §3@§)
               {
                  (_loc3_ as §3@§).setSize(this.§?U§,this.§continue§);
                  (_loc3_ as §3@§).§ null§ = this.§!!O§;
               }
               else if(_loc3_ is §<Y§)
               {
                  (_loc3_ as §<Y§).setSize(this.§?U§,this.§continue§);
                  (_loc3_ as §<Y§).§!B§ = this.§!!O§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`8§;
      }
      
      private function §^y§(param1:Object) : §[!"§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §[!"§.§82§:
               return new §<Y§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §[!"§.§2!7§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §3@§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §[!"§.§3W§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §<Z§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §[!"§.§;!K§:
               return new §'G§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §[!"§.END:
               this.§2>§ = param1.time * 1000;
               break;
            case §[!"§.§<<§:
               this.§?U§ = param1.width;
               this.§continue§ = param1.height;
               break;
            case §[!"§.§[P§:
               this.§!!O§ = false;
               break;
            case §[!"§.§9^§:
               this.§!!O§ = true;
               break;
            case §[!"§.§'<§:
               this.§3[§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`8§)
         {
            this.§`8§.dispose();
            this.§`8§ = null;
         }
         this.§]v§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`8§)
         {
            this.§`8§ = new Sprite();
         }
         this.§"<§ += param1;
         var _loc2_:int = this.§]v§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]v§[_loc2_].update(this.§"<§,this.§`8§,this.§[E§))
            {
               this.§]v§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§91§();
         this.§,4§();
         return this.§"<§ < this.§2>§;
      }
      
      private function §,4§() : void
      {
         var _loc1_:int = §2t§.§3P§.height;
         var _loc2_:Number = §[+§.§;!7§;
         var _loc3_:Number = §[+§.§!M§;
         var _loc4_:int = (_loc1_ - this.§continue§ * _loc2_) / _loc2_;
         this.§`8§.y = _loc4_ >> 1;
      }
      
      private function §91§() : void
      {
         §2t§.§,!E§.color = this.§3[§;
      }
      
      public function clone(param1:§6!4§) : §#!G§
      {
         var _loc3_:§[!"§ = null;
         var _loc2_:§#!G§ = new §#!G§(null,null);
         for each(_loc3_ in this.§]v§)
         {
            _loc2_.§]v§.push(_loc3_.clone());
         }
         _loc2_.§"<§ = this.§"<§;
         _loc2_.§2>§ = this.§2>§;
         _loc2_.§?U§ = this.§?U§;
         _loc2_.§continue§ = this.§continue§;
         _loc2_.§!!O§ = this.§!!O§;
         _loc2_.§3[§ = this.§3[§;
         _loc2_.§>;§ = this.§>;§;
         _loc2_.§[E§ = param1;
         return _loc2_;
      }
      
      public function get §<!G§() : String
      {
         return this.§>;§;
      }
      
      public function set §<!G§(param1:String) : void
      {
         this.§>;§ = param1;
      }
   }
}
