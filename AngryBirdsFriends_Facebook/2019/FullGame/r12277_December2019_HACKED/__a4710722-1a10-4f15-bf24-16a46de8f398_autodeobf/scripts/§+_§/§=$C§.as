package §+_§
{
   import §#Z§.§6J§;
   import §#Z§.Sprite;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §9#M§.§%"=§;
   
   public class §=$C§
   {
      
      public static const §="$§:String = "CutScene_Type_Intro";
      
      public static const §6"<§:String = "CutScene_Type_Outro";
      
      public static const §,"b§:String = "CutScene_Type_Final_Outro";
       
      
      private var §]#o§:§%"=§;
      
      private var §;"r§:String;
      
      private var §]#2§:Vector.<§>$8§>;
      
      private var §[#2§:Number;
      
      private var §8g§:Number;
      
      private var §@!l§:Number;
      
      private var §,7§:Number;
      
      private var §]#+§:Sprite;
      
      private var §'V§:Boolean = true;
      
      private var §<!F§:uint;
      
      private var §^o§:Boolean;
      
      private var § case§:§6J§;
      
      private var §&$§:§6J§;
      
      public function §=$C§(param1:Object, param2:String)
      {
         var _loc3_:§>$8§ = null;
         var _loc4_:Object = null;
         this.§]#2§ = new Vector.<§>$8§>();
         super();
         this.§[#2§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;"r§ = §="$§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;"r§ = §6"<§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§<"F§(_loc4_);
               if(_loc3_)
               {
                  this.§]#2§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§]#2§)
            {
               if(_loc3_ is §`!#§)
               {
                  (_loc3_ as §`!#§).setSize(this.§@!l§,this.§,7§);
                  (_loc3_ as §`!#§).§!#F§ = this.§'V§;
               }
               else if(_loc3_ is §<!2§)
               {
                  (_loc3_ as §<!2§).setSize(this.§@!l§,this.§,7§);
                  (_loc3_ as §<!2§).§"!$§ = this.§'V§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      private function §<"F§(param1:Object) : §>$8§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §>$8§.§%"G§:
               return new §<!2§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §>$8§.§&#&§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §`!#§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §>$8§.§7L§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §in§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §>$8§.§&!8§:
               this.§8g§ = param1.time * 1000;
               break;
            case §>$8§.§@#o§:
               this.§@!l§ = param1.width;
               this.§,7§ = param1.height;
               break;
            case §>$8§.§ "&§:
               this.§'V§ = false;
               break;
            case §>$8§.§8!7§:
               this.§'V§ = true;
               break;
            case §>$8§.§#-§:
               this.§<!F§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
               break;
            default:
               break;
            case §>$8§.§`#0§:
               return new §9#C§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         this.§]#2§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]#+§)
         {
            this.§]#+§ = new Sprite();
         }
         this.§[#2§ += param1;
         var _loc2_:int = this.§]#2§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§]#2§[_loc2_].update(this.§[#2§,this.§]#+§,this.§]#o§))
            {
               this.§]#2§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^#5§();
         this.§?"#§();
         this.§"#D§();
         return this.§[#2§ < this.§8g§;
      }
      
      private function §"#D§() : void
      {
         var _loc1_:int = Starling.§7_§.height;
         int(Starling.§7_§.width);
         var _loc3_:Number = §+!p§.§<#,§;
         var _loc4_:Number = §+!p§.§"#m§;
         var _loc5_:int = (_loc1_ - this.§,7§ * _loc3_) / _loc3_;
         this.§]#+§.scaleX = this.§]#+§.scaleY = Math.max(0.5,Math.min(1,_loc3_ / _loc4_));
         this.§]#+§.y = _loc5_ >> 1;
      }
      
      private function §^#5§() : void
      {
         Starling.§%!q§.color = this.§<!F§;
      }
      
      private function §?"#§() : void
      {
         if(this.§^o§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]#+§.getChildByName(§<!2§.§+"i§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§^o§ = true;
      }
      
      public function clone(param1:§%"=§) : §=$C§
      {
         var _loc3_:§>$8§ = null;
         var _loc2_:§=$C§ = new §=$C§(null,null);
         for each(_loc3_ in this.§]#2§)
         {
            _loc2_.§]#2§.push(_loc3_.clone());
         }
         _loc2_.§[#2§ = this.§[#2§;
         _loc2_.§8g§ = this.§8g§;
         _loc2_.§@!l§ = this.§@!l§;
         _loc2_.§,7§ = this.§,7§;
         _loc2_.§'V§ = this.§'V§;
         _loc2_.§<!F§ = this.§<!F§;
         _loc2_.§;"r§ = this.§;"r§;
         _loc2_.§]#o§ = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.§;"r§;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.§;"r§ = param1;
      }
   }
}
