package §]f§
{
   import §"a§.§>X§;
   import §;%§.§8o§;
   import §;q§.§-!>§;
   import §;q§.Sprite;
   import §`t§.§^?§;
   
   public class §;,§
   {
      
      public static const §;m§:String = "CutScene_Type_Intro";
      
      public static const §6V§:String = "CutScene_Type_Outro";
      
      public static const §+C§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>t§:§>X§;
      
      private var §<,§:String;
      
      private var §7N§:Vector.<§6$§>;
      
      private var §;?§:Number;
      
      private var §@4§:Number;
      
      private var §<!3§:Number;
      
      private var §5u§:Number;
      
      private var §]?§:Sprite;
      
      private var §"x§:Boolean = true;
      
      private var §^y§:uint;
      
      private var §,!F§:Boolean;
      
      private var §3u§:§-!>§;
      
      private var §^!<§:§-!>§;
      
      public function §;,§(param1:Object, param2:String)
      {
         var _loc3_:§6$§ = null;
         var _loc4_:Object = null;
         this.§7N§ = new Vector.<§6$§>();
         super();
         this.§;?§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§<,§ = §;m§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§<,§ = §6V§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§9Z§(_loc4_);
               if(_loc3_)
               {
                  this.§7N§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7N§)
            {
               if(_loc3_ is §'A§)
               {
                  (_loc3_ as §'A§).setSize(this.§<!3§,this.§5u§);
                  (_loc3_ as §'A§).§,!0§ = this.§"x§;
               }
               else if(_loc3_ is §2a§)
               {
                  (_loc3_ as §2a§).setSize(this.§<!3§,this.§5u§);
                  (_loc3_ as §2a§).§"z§ = this.§"x§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]?§;
      }
      
      private function §9Z§(param1:Object) : §6$§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §6$§.§6p§:
               return new §2a§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §6$§.§?!7§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §'A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §6$§.§,2§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §9!§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §6$§.§5!%§:
               return new §#^§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §6$§.END:
               this.§@4§ = param1.time * 1000;
               break;
            case §6$§.§,_§:
               this.§<!3§ = param1.width;
               this.§5u§ = param1.height;
               break;
            case §6$§.§%j§:
               this.§"x§ = false;
               break;
            case §6$§.§&B§:
               this.§"x§ = true;
               break;
            case §6$§.§<h§:
               this.§^y§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]?§)
         {
            this.§]?§.dispose();
            this.§]?§ = null;
         }
         this.§7N§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]?§)
         {
            this.§]?§ = new Sprite();
         }
         this.§;?§ += param1;
         var _loc2_:int = this.§7N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7N§[_loc2_].update(this.§;?§,this.§]?§,this.§>t§))
            {
               this.§7N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,@§();
         this.§>!>§();
         this.§ v§();
         return this.§;?§ < this.§@4§;
      }
      
      private function § v§() : void
      {
         var _loc1_:int = §8o§.§5J§.§9I§.height;
         var _loc2_:Number = §^?§.§3!,§;
         var _loc3_:Number = §^?§.§7!$§;
         var _loc4_:int = (_loc1_ - this.§5u§ * _loc2_) / _loc2_;
         this.§]?§.y = _loc4_ >> 1;
      }
      
      private function §,@§() : void
      {
         §8o§.§5J§.color = this.§^y§;
      }
      
      private function §>!>§() : void
      {
         if(this.§,!F§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]?§.getChildByName(§2a§.§1_§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§,!F§ = true;
      }
      
      public function clone(param1:§>X§) : §;,§
      {
         var _loc3_:§6$§ = null;
         var _loc2_:§;,§ = new §;,§(null,null);
         for each(_loc3_ in this.§7N§)
         {
            _loc2_.§7N§.push(_loc3_.clone());
         }
         _loc2_.§;?§ = this.§;?§;
         _loc2_.§@4§ = this.§@4§;
         _loc2_.§<!3§ = this.§<!3§;
         _loc2_.§5u§ = this.§5u§;
         _loc2_.§"x§ = this.§"x§;
         _loc2_.§^y§ = this.§^y§;
         _loc2_.§<,§ = this.§<,§;
         _loc2_.§>t§ = param1;
         return _loc2_;
      }
      
      public function get §%!9§() : String
      {
         return this.§<,§;
      }
      
      public function set §%!9§(param1:String) : void
      {
         this.§<,§ = param1;
      }
   }
}
