package §[!8§
{
   import §&V§.§,w§;
   import §;j§.§8[§;
   import §@!%§.§+8§;
   import §@!=§.§4G§;
   import §@!=§.Sprite;
   
   public class §'[§
   {
      
      public static const §8-§:String = "CutScene_Type_Intro";
      
      public static const §@!E§:String = "CutScene_Type_Outro";
      
      public static const §&!!§:String = "CutScene_Type_Final_Outro";
       
      
      private var §^!&§:§,w§;
      
      private var §[b§:String;
      
      private var §'!-§:Vector.<§-u§>;
      
      private var §`+§:Number;
      
      private var §"!<§:Number;
      
      private var §6#§:Number;
      
      private var §5m§:Number;
      
      private var §+x§:Sprite;
      
      private var §,S§:Boolean = true;
      
      private var §?!?§:uint;
      
      private var §8o§:Boolean;
      
      private var §+W§:§4G§;
      
      private var §;!'§:§4G§;
      
      public function §'[§(param1:Object, param2:String)
      {
         var _loc3_:§-u§ = null;
         var _loc4_:Object = null;
         this.§'!-§ = new Vector.<§-u§>();
         super();
         this.§`+§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§[b§ = §8-§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§[b§ = §@!E§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§-;§(_loc4_);
               if(_loc3_)
               {
                  this.§'!-§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'!-§)
            {
               if(_loc3_ is §6§)
               {
                  (_loc3_ as §6§).setSize(this.§6#§,this.§5m§);
                  (_loc3_ as §6§).§,!@§ = this.§,S§;
               }
               else if(_loc3_ is §-^§)
               {
                  (_loc3_ as §-^§).setSize(this.§6#§,this.§5m§);
                  (_loc3_ as §-^§).§"n§ = this.§,S§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§+x§;
      }
      
      private function §-;§(param1:Object) : §-u§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §-u§.§!Y§:
               return new §-^§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §-u§.§%-§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §6§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §-u§.§=!?§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §#d§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §-u§.§3'§:
               return new §6D§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §-u§.END:
               this.§"!<§ = param1.time * 1000;
               break;
            case §-u§.§@m§:
               this.§6#§ = param1.width;
               this.§5m§ = param1.height;
               break;
            case §-u§.§8!E§:
               this.§,S§ = false;
               break;
            case §-u§.§8v§:
               this.§,S§ = true;
               break;
            case §-u§.§4e§:
               this.§?!?§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§+x§)
         {
            this.§+x§.dispose();
            this.§+x§ = null;
         }
         this.§'!-§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§+x§)
         {
            this.§+x§ = new Sprite();
         }
         this.§`+§ += param1;
         var _loc2_:int = this.§'!-§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'!-§[_loc2_].update(this.§`+§,this.§+x§,this.§^!&§))
            {
               this.§'!-§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7-§();
         this.§ g§();
         this.§&j§();
         return this.§`+§ < this.§"!<§;
      }
      
      private function §&j§() : void
      {
         var _loc1_:int = §+8§.§-2§.§&<§.height;
         var _loc2_:Number = §8[§.§=h§;
         var _loc3_:Number = §8[§.§[!'§;
         var _loc4_:int = (_loc1_ - this.§5m§ * _loc2_) / _loc2_;
         this.§+x§.y = _loc4_ >> 1;
      }
      
      private function §7-§() : void
      {
         §+8§.§-2§.color = this.§?!?§;
      }
      
      private function § g§() : void
      {
         if(this.§8o§)
         {
            return;
         }
         var _loc1_:Sprite = this.§+x§.getChildByName(§-^§.§;s§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§8o§ = true;
      }
      
      public function clone(param1:§,w§) : §'[§
      {
         var _loc3_:§-u§ = null;
         var _loc2_:§'[§ = new §'[§(null,null);
         for each(_loc3_ in this.§'!-§)
         {
            _loc2_.§'!-§.push(_loc3_.clone());
         }
         _loc2_.§`+§ = this.§`+§;
         _loc2_.§"!<§ = this.§"!<§;
         _loc2_.§6#§ = this.§6#§;
         _loc2_.§5m§ = this.§5m§;
         _loc2_.§,S§ = this.§,S§;
         _loc2_.§?!?§ = this.§?!?§;
         _loc2_.§[b§ = this.§[b§;
         _loc2_.§^!&§ = param1;
         return _loc2_;
      }
      
      public function get §!s§() : String
      {
         return this.§[b§;
      }
      
      public function set §!s§(param1:String) : void
      {
         this.§[b§ = param1;
      }
   }
}
