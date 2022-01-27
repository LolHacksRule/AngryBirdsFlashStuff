package §4A§
{
   import §'!&§.§ "E§;
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   import §3!4§.§ ![§;
   import §8o§.§5"%§;
   
   public class § j§
   {
      
      public static const §#"?§:String = "CutScene_Type_Intro";
      
      public static const §"" §:String = "CutScene_Type_Outro";
      
      public static const §7Y§:String = "CutScene_Type_Final_Outro";
       
      
      private var §3'§:§5"%§;
      
      private var §6!R§:String;
      
      private var §2!<§:Vector.<§9!i§>;
      
      private var §&!5§:Number;
      
      private var §&!@§:Number;
      
      private var §^M§:Number;
      
      private var §2!u§:Number;
      
      private var §>#§:Sprite;
      
      private var §9">§:Boolean = true;
      
      private var §1!F§:uint;
      
      private var §7"8§:Boolean;
      
      private var §?!7§:§ "E§;
      
      private var §7"4§:§ "E§;
      
      public function § j§(param1:Object, param2:String)
      {
         var _loc3_:§9!i§ = null;
         var _loc4_:Object = null;
         this.§2!<§ = new Vector.<§9!i§>();
         super();
         this.§&!5§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§6!R§ = §#"?§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§6!R§ = §"" §;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§2[§(_loc4_);
               if(_loc3_)
               {
                  this.§2!<§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§2!<§)
            {
               if(_loc3_ is §4"#§)
               {
                  (_loc3_ as §4"#§).setSize(this.§^M§,this.§2!u§);
                  (_loc3_ as §4"#§).§0"A§ = this.§9">§;
               }
               else if(_loc3_ is §0!^§)
               {
                  (_loc3_ as §0!^§).setSize(this.§^M§,this.§2!u§);
                  (_loc3_ as §0!^§).§!_§ = this.§9">§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      private function §2[§(param1:Object) : §9!i§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §9!i§.§>!V§:
               return new §0!^§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §9!i§.§,!t§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §4"#§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §9!i§.§ " §:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §<S§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §9!i§.§;!-§:
               return new §%"@§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §9!i§.§2!X§:
               this.§&!@§ = param1.time * 1000;
               break;
            case §9!i§.§ !`§:
               this.§^M§ = param1.width;
               this.§2!u§ = param1.height;
               break;
            case §9!i§.§,!?§:
               this.§9">§ = false;
               break;
            case §9!i§.§>!h§:
               this.§9">§ = true;
               break;
            case §9!i§.§@0§:
               this.§1!F§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
         this.§2!<§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§>#§)
         {
            this.§>#§ = new Sprite();
         }
         this.§&!5§ += param1;
         var _loc2_:int = this.§2!<§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§2!<§[_loc2_].update(this.§&!5§,this.§>#§,this.§3'§))
            {
               this.§2!<§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!1§();
         this.§3"2§();
         this.§,!i§();
         return this.§&!5§ < this.§&!@§;
      }
      
      private function §,!i§() : void
      {
         var _loc1_:int = § ![§.§]D§.height;
         var _loc2_:Number = §;0§.§@'§;
         var _loc3_:Number = §;0§.§6[§;
         var _loc4_:int = (_loc1_ - this.§2!u§ * _loc2_) / _loc2_;
         this.§>#§.y = _loc4_ >> 1;
      }
      
      private function §7!1§() : void
      {
         § ![§.§!G§.color = this.§1!F§;
      }
      
      private function §3"2§() : void
      {
         if(this.§7"8§)
         {
            return;
         }
         var _loc1_:Sprite = this.§>#§.getChildByName(§0!^§.§8!E§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§7"8§ = true;
      }
      
      public function clone(param1:§5"%§) : § j§
      {
         var _loc3_:§9!i§ = null;
         var _loc2_:§ j§ = new § j§(null,null);
         for each(_loc3_ in this.§2!<§)
         {
            _loc2_.§2!<§.push(_loc3_.clone());
         }
         _loc2_.§&!5§ = this.§&!5§;
         _loc2_.§&!@§ = this.§&!@§;
         _loc2_.§^M§ = this.§^M§;
         _loc2_.§2!u§ = this.§2!u§;
         _loc2_.§9">§ = this.§9">§;
         _loc2_.§1!F§ = this.§1!F§;
         _loc2_.§6!R§ = this.§6!R§;
         _loc2_.§3'§ = param1;
         return _loc2_;
      }
      
      public function get §3!F§() : String
      {
         return this.§6!R§;
      }
      
      public function set §3!F§(param1:String) : void
      {
         this.§6!R§ = param1;
      }
   }
}
