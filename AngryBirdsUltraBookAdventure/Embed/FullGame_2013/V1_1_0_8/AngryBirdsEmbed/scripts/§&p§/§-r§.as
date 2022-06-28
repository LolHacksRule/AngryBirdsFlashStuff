package §&p§
{
   import §&o§.§<3§;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   
   public class §-r§
   {
      
      public static const §[Z§:String = "CutScene_Type_Intro";
      
      public static const §02§:String = "CutScene_Type_Outro";
      
      public static const §>A§:String = "CutScene_Type_Final_Outro";
       
      
      private var §-M§:§5!H§;
      
      private var §@j§:String;
      
      private var §0§:Vector.<§,K§>;
      
      private var §^f§:Number;
      
      private var §67§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §,!7§:Sprite;
      
      private var §;!#§:Boolean = true;
      
      private var §>i§:uint;
      
      private var §2<§:Boolean;
      
      private var §5Z§:§<3§;
      
      private var §5@§:§<3§;
      
      public function §-r§(param1:Object, param2:String)
      {
         var _loc3_:§,K§ = null;
         var _loc4_:Object = null;
         this.§0§ = new Vector.<§,K§>();
         super();
         this.§^f§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§@j§ = §[Z§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§@j§ = §02§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§1!;§(_loc4_);
               if(_loc3_)
               {
                  this.§0§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0§)
            {
               if(_loc3_ is §8>§)
               {
                  (_loc3_ as §8>§).setSize(this.§[s§,this.§8!&§);
                  (_loc3_ as §8>§).§5?§ = this.§;!#§;
               }
               else if(_loc3_ is §=?§)
               {
                  (_loc3_ as §=?§).setSize(this.§[s§,this.§8!&§);
                  (_loc3_ as §=?§).§8o§ = this.§;!#§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      private function §1!;§(param1:Object) : §,K§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,K§.§<!,§:
               return new §=?§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,K§.§%!0§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8>§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,K§.§package§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §%!#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,K§.§`g§:
               return new §0>§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,K§.END:
               this.§67§ = param1.time * 1000;
               break;
            case §,K§.§;r§:
               this.§[s§ = param1.width;
               this.§8!&§ = param1.height;
               break;
            case §,K§.§[U§:
               this.§;!#§ = false;
               break;
            case §,K§.§ L§:
               this.§;!#§ = true;
               break;
            case §,K§.§;&§:
               this.§>i§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§,!7§)
         {
            this.§,!7§.dispose();
            this.§,!7§ = null;
         }
         this.§0§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§,!7§)
         {
            this.§,!7§ = new Sprite();
         }
         this.§^f§ += param1;
         var _loc2_:int = this.§0§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0§[_loc2_].update(this.§^f§,this.§,!7§,this.§-M§))
            {
               this.§0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§@!%§();
         this.§2#§();
         return this.§^f§ < this.§67§;
      }
      
      private function §2#§() : void
      {
         var _loc1_:int = §>I§.§+2§.height;
         var _loc2_:Number = §=w§.§continue§;
         var _loc3_:Number = §=w§.§'c§;
         var _loc4_:int = (_loc1_ - this.§8!&§ * _loc2_) / _loc2_;
         this.§,!7§.y = _loc4_ >> 1;
      }
      
      private function §@!%§() : void
      {
         §>I§.§`S§.color = this.§>i§;
      }
      
      public function clone(param1:§5!H§) : §-r§
      {
         var _loc3_:§,K§ = null;
         var _loc2_:§-r§ = new §-r§(null,null);
         for each(_loc3_ in this.§0§)
         {
            _loc2_.§0§.push(_loc3_.clone());
         }
         _loc2_.§^f§ = this.§^f§;
         _loc2_.§67§ = this.§67§;
         _loc2_.§[s§ = this.§[s§;
         _loc2_.§8!&§ = this.§8!&§;
         _loc2_.§;!#§ = this.§;!#§;
         _loc2_.§>i§ = this.§>i§;
         _loc2_.§@j§ = this.§@j§;
         _loc2_.§-M§ = param1;
         return _loc2_;
      }
      
      public function get §"Z§() : String
      {
         return this.§@j§;
      }
      
      public function set §"Z§(param1:String) : void
      {
         this.§@j§ = param1;
      }
   }
}
