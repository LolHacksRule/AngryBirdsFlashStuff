package §'!I§
{
   import § !N§.§`v§;
   import §3H§.§!q§;
   import §3H§.Sprite;
   import §5J§.§>$§;
   import §@w§.§2G§;
   
   public class §6A§
   {
      
      public static const §2A§:String = "CutScene_Type_Intro";
      
      public static const §^!B§:String = "CutScene_Type_Outro";
      
      public static const §-R§:String = "CutScene_Type_Final_Outro";
       
      
      private var §<!-§:§`v§;
      
      private var §?9§:String;
      
      private var §`D§:Vector.<§]p§>;
      
      private var §-f§:Number;
      
      private var §--§:Number;
      
      private var §#!6§:Number;
      
      private var §&r§:Number;
      
      private var §5+§:Sprite;
      
      private var §0S§:Boolean = true;
      
      private var §>!8§:uint;
      
      private var §3Q§:Boolean;
      
      private var §<!5§:§!q§;
      
      private var §[!M§:§!q§;
      
      public function §6A§(param1:Object, param2:String)
      {
         var _loc3_:§]p§ = null;
         var _loc4_:Object = null;
         this.§`D§ = new Vector.<§]p§>();
         super();
         this.§-f§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§?9§ = §2A§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§?9§ = §^!B§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§7q§(_loc4_);
               if(_loc3_)
               {
                  this.§`D§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§`D§)
            {
               if(_loc3_ is §;i§)
               {
                  (_loc3_ as §;i§).setSize(this.§#!6§,this.§&r§);
                  (_loc3_ as §;i§).§6!K§ = this.§0S§;
               }
               else if(_loc3_ is §9s§)
               {
                  (_loc3_ as §9s§).setSize(this.§#!6§,this.§&r§);
                  (_loc3_ as §9s§).§0!§ = this.§0S§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§5+§;
      }
      
      private function §7q§(param1:Object) : §]p§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §]p§.§"&§:
               return new §9s§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §]p§.§[=§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §;i§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §]p§.§<e§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §2v§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §]p§.§1!M§:
               return new §-8§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §]p§.END:
               this.§--§ = param1.time * 1000;
               break;
            case §]p§.§%!8§:
               this.§#!6§ = param1.width;
               this.§&r§ = param1.height;
               break;
            case §]p§.§!!F§:
               this.§0S§ = false;
               break;
            case §]p§.§!D§:
               this.§0S§ = true;
               break;
            case §]p§.§!'§:
               this.§>!8§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§5+§)
         {
            this.§5+§.dispose();
            this.§5+§ = null;
         }
         this.§`D§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§5+§)
         {
            this.§5+§ = new Sprite();
         }
         this.§-f§ += param1;
         var _loc2_:int = this.§`D§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§`D§[_loc2_].update(this.§-f§,this.§5+§,this.§<!-§))
            {
               this.§`D§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§'!8§();
         this.§7[§();
         this.§>R§();
         return this.§-f§ < this.§--§;
      }
      
      private function §>R§() : void
      {
         var _loc1_:int = §>$§.§-U§.§%B§.height;
         var _loc2_:Number = §2G§.§8$§;
         var _loc3_:Number = §2G§.§;!P§;
         var _loc4_:int = (_loc1_ - this.§&r§ * _loc2_) / _loc2_;
         this.§5+§.y = _loc4_ >> 1;
      }
      
      private function §'!8§() : void
      {
         §>$§.§-U§.color = this.§>!8§;
      }
      
      private function §7[§() : void
      {
         if(this.§3Q§)
         {
            return;
         }
         var _loc1_:Sprite = this.§5+§.getChildByName(§9s§.§`! §) as Sprite;
         if(!_loc1_)
         {
         }
         this.§3Q§ = true;
      }
      
      public function clone(param1:§`v§) : §6A§
      {
         var _loc3_:§]p§ = null;
         var _loc2_:§6A§ = new §6A§(null,null);
         for each(_loc3_ in this.§`D§)
         {
            _loc2_.§`D§.push(_loc3_.clone());
         }
         _loc2_.§-f§ = this.§-f§;
         _loc2_.§--§ = this.§--§;
         _loc2_.§#!6§ = this.§#!6§;
         _loc2_.§&r§ = this.§&r§;
         _loc2_.§0S§ = this.§0S§;
         _loc2_.§>!8§ = this.§>!8§;
         _loc2_.§?9§ = this.§?9§;
         _loc2_.§<!-§ = param1;
         return _loc2_;
      }
      
      public function get §,B§() : String
      {
         return this.§?9§;
      }
      
      public function set §,B§(param1:String) : void
      {
         this.§?9§ = param1;
      }
   }
}
