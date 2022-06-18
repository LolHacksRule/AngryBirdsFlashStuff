package §4!3§
{
   import §6u§.§3W§;
   import §8!#§.§<n§;
   import §>%§.§]3§;
   import §]!6§.§8D§;
   import §]!6§.Sprite;
   
   public class §+!D§
   {
      
      public static const §?e§:String = "CutScene_Type_Intro";
      
      public static const §4"§:String = "CutScene_Type_Outro";
      
      public static const §+!B§:String = "CutScene_Type_Final_Outro";
       
      
      private var §[!C§:§3W§;
      
      private var §2P§:String;
      
      private var §8g§:Vector.<§,d§>;
      
      private var §8]§:Number;
      
      private var §=E§:Number;
      
      private var §-!6§:Number;
      
      private var § B§:Number;
      
      private var §^!>§:Sprite;
      
      private var §>v§:Boolean = true;
      
      private var §4I§:uint;
      
      private var §`!,§:Boolean;
      
      private var §1z§:§8D§;
      
      private var §-!=§:§8D§;
      
      public function §+!D§(param1:Object, param2:String)
      {
         var _loc3_:§,d§ = null;
         var _loc4_:Object = null;
         this.§8g§ = new Vector.<§,d§>();
         super();
         this.§8]§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§2P§ = §?e§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§2P§ = §4"§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§!P§(_loc4_);
               if(_loc3_)
               {
                  this.§8g§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§8g§)
            {
               if(_loc3_ is §&6§)
               {
                  (_loc3_ as §&6§).setSize(this.§-!6§,this.§ B§);
                  (_loc3_ as §&6§).§,I§ = this.§>v§;
               }
               else if(_loc3_ is §0s§)
               {
                  (_loc3_ as §0s§).setSize(this.§-!6§,this.§ B§);
                  (_loc3_ as §0s§).§?!4§ = this.§>v§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§^!>§;
      }
      
      private function §!P§(param1:Object) : §,d§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,d§.§<`§:
               return new §0s§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,d§.§@$§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §&6§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,d§.§[!&§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §^!C§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,d§.§@1§:
               return new §,!H§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,d§.END:
               this.§=E§ = param1.time * 1000;
               break;
            case §,d§.§0'§:
               this.§-!6§ = param1.width;
               this.§ B§ = param1.height;
               break;
            case §,d§.§^W§:
               this.§>v§ = false;
               break;
            case §,d§.§<!-§:
               this.§>v§ = true;
               break;
            case §,d§.§44§:
               this.§4I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§^!>§)
         {
            this.§^!>§.dispose();
            this.§^!>§ = null;
         }
         this.§8g§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§^!>§)
         {
            this.§^!>§ = new Sprite();
         }
         this.§8]§ += param1;
         var _loc2_:int = this.§8g§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§8g§[_loc2_].update(this.§8]§,this.§^!>§,this.§[!C§))
            {
               this.§8g§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]u§();
         this.§59§();
         this.§9!;§();
         return this.§8]§ < this.§=E§;
      }
      
      private function §9!;§() : void
      {
         var _loc1_:int = §<n§.§?@§.§"c§.height;
         var _loc2_:Number = §]3§.§3=§;
         var _loc3_:Number = §]3§.§>F§;
         var _loc4_:int = (_loc1_ - this.§ B§ * _loc2_) / _loc2_;
         this.§^!>§.y = _loc4_ >> 1;
      }
      
      private function §]u§() : void
      {
         §<n§.§?@§.color = this.§4I§;
      }
      
      private function §59§() : void
      {
         if(this.§`!,§)
         {
            return;
         }
         var _loc1_:Sprite = this.§^!>§.getChildByName(§0s§.§2m§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§`!,§ = true;
      }
      
      public function clone(param1:§3W§) : §+!D§
      {
         var _loc3_:§,d§ = null;
         var _loc2_:§+!D§ = new §+!D§(null,null);
         for each(_loc3_ in this.§8g§)
         {
            _loc2_.§8g§.push(_loc3_.clone());
         }
         _loc2_.§8]§ = this.§8]§;
         _loc2_.§=E§ = this.§=E§;
         _loc2_.§-!6§ = this.§-!6§;
         _loc2_.§ B§ = this.§ B§;
         _loc2_.§>v§ = this.§>v§;
         _loc2_.§4I§ = this.§4I§;
         _loc2_.§2P§ = this.§2P§;
         _loc2_.§[!C§ = param1;
         return _loc2_;
      }
      
      public function get §[w§() : String
      {
         return this.§2P§;
      }
      
      public function set §[w§(param1:String) : void
      {
         this.§2P§ = param1;
      }
   }
}
