package §@!L§
{
   import §!!K§.§else§;
   import §7!B§.§;R§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   import §^!Y§.§'R§;
   
   public class §#L§
   {
      
      public static const §@!U§:String = "CutScene_Type_Intro";
      
      public static const §<!n§:String = "CutScene_Type_Outro";
      
      public static const §!!J§:String = "CutScene_Type_Final_Outro";
       
      
      private var §+]§:§'R§;
      
      private var §;p§:String;
      
      private var §[!V§:Vector.<§9N§>;
      
      private var §[f§:Number;
      
      private var §+o§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §2O§:Sprite;
      
      private var §@!G§:Boolean = true;
      
      private var §?![§:uint;
      
      private var §9!s§:Boolean;
      
      private var §4!5§:§;R§;
      
      private var §^!d§:§;R§;
      
      public function §#L§(param1:Object, param2:String)
      {
         var _loc3_:§9N§ = null;
         var _loc4_:Object = null;
         this.§[!V§ = new Vector.<§9N§>();
         super();
         this.§[f§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;p§ = §@!U§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;p§ = §<!n§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§7!#§(_loc4_);
               if(_loc3_)
               {
                  this.§[!V§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§[!V§)
            {
               if(_loc3_ is §3!%§)
               {
                  (_loc3_ as §3!%§).setSize(this.§2!d§,this.§@@§);
                  (_loc3_ as §3!%§).§8?§ = this.§@!G§;
               }
               else if(_loc3_ is § M§)
               {
                  (_loc3_ as § M§).setSize(this.§2!d§,this.§@@§);
                  (_loc3_ as § M§).§6!R§ = this.§@!G§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      private function §7!#§(param1:Object) : §9N§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §9N§.§[!9§:
               return new § M§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §9N§.§@!z§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §3!%§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §9N§.§?F§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §3!C§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §9N§.§8!O§:
               return new §!!2§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §9N§.END:
               this.§+o§ = param1.time * 1000;
               break;
            case §9N§.§^!"§:
               this.§2!d§ = param1.width;
               this.§@@§ = param1.height;
               break;
            case §9N§.§?!i§:
               this.§@!G§ = false;
               break;
            case §9N§.§`!k§:
               this.§@!G§ = true;
               break;
            case §9N§.§;!y§:
               this.§?![§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§2O§)
         {
            this.§2O§.dispose();
            this.§2O§ = null;
         }
         this.§[!V§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§2O§)
         {
            this.§2O§ = new Sprite();
         }
         this.§[f§ += param1;
         var _loc2_:int = this.§[!V§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§[!V§[_loc2_].update(this.§[f§,this.§2O§,this.§+]§))
            {
               this.§[!V§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&e§();
         this.§<2§();
         this.§>!8§();
         return this.§[f§ < this.§+o§;
      }
      
      private function §>!8§() : void
      {
         var _loc1_:int = §else§.§^!A§.§3S§.height;
         var _loc2_:Number = §^!c§.§#!M§;
         var _loc3_:Number = §^!c§.§6W§;
         var _loc4_:int = (_loc1_ - this.§@@§ * _loc2_) / _loc2_;
         this.§2O§.y = _loc4_ >> 1;
      }
      
      private function §&e§() : void
      {
         §else§.§^!A§.color = this.§?![§;
      }
      
      private function §<2§() : void
      {
         if(this.§9!s§)
         {
            return;
         }
         var _loc1_:Sprite = this.§2O§.getChildByName(§ M§.§;!_§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§9!s§ = true;
      }
      
      public function clone(param1:§'R§) : §#L§
      {
         var _loc3_:§9N§ = null;
         var _loc2_:§#L§ = new §#L§(null,null);
         for each(_loc3_ in this.§[!V§)
         {
            _loc2_.§[!V§.push(_loc3_.clone());
         }
         _loc2_.§[f§ = this.§[f§;
         _loc2_.§+o§ = this.§+o§;
         _loc2_.§2!d§ = this.§2!d§;
         _loc2_.§@@§ = this.§@@§;
         _loc2_.§@!G§ = this.§@!G§;
         _loc2_.§?![§ = this.§?![§;
         _loc2_.§;p§ = this.§;p§;
         _loc2_.§+]§ = param1;
         return _loc2_;
      }
      
      public function get §,X§() : String
      {
         return this.§;p§;
      }
      
      public function set §,X§(param1:String) : void
      {
         this.§;p§ = param1;
      }
   }
}
