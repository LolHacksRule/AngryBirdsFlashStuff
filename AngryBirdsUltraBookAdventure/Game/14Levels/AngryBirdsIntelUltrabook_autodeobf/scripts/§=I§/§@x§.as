package §=I§
{
   import §2m§.§<!?§;
   import §;!y§.§,!s§;
   import §=`§.§6!I§;
   import §`g§.§ O§;
   import §`g§.Sprite;
   
   public class §@x§
   {
      
      public static const §@<§:String = "CutScene_Type_Intro";
      
      public static const §<""§:String = "CutScene_Type_Outro";
      
      public static const §4!X§:String = "CutScene_Type_Final_Outro";
       
      
      private var §&!k§:§6!I§;
      
      private var §>G§:String;
      
      private var §^e§:Vector.<§?!t§>;
      
      private var §!!L§:Number;
      
      private var §&!`§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §]2§:Sprite;
      
      private var §#!L§:Boolean = true;
      
      private var §5A§:uint;
      
      private var §4!D§:Boolean;
      
      private var §0!a§:§ O§;
      
      private var §3m§:§ O§;
      
      public function §@x§(param1:Object, param2:String)
      {
         var _loc3_:§?!t§ = null;
         var _loc4_:Object = null;
         this.§^e§ = new Vector.<§?!t§>();
         super();
         this.§!!L§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§>G§ = §@<§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§>G§ = §<""§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+A§(_loc4_);
               if(_loc3_)
               {
                  this.§^e§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§^e§)
            {
               if(_loc3_ is §@!l§)
               {
                  (_loc3_ as §@!l§).setSize(this.§3!8§,this.§0!Q§);
                  (_loc3_ as §@!l§).§+!U§ = this.§#!L§;
               }
               else if(_loc3_ is §1$§)
               {
                  (_loc3_ as §1$§).setSize(this.§3!8§,this.§0!Q§);
                  (_loc3_ as §1$§).§-!m§ = this.§#!L§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      private function §+A§(param1:Object) : §?!t§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §?!t§.§^k§:
               return new §1$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §?!t§.§0!u§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §@!l§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §?!t§.§]!e§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`!N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §?!t§.§;X§:
               return new §>r§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §?!t§.END:
               this.§&!`§ = param1.time * 1000;
               break;
            case §?!t§.§-;§:
               this.§3!8§ = param1.width;
               this.§0!Q§ = param1.height;
               break;
            case §?!t§.§else §:
               this.§#!L§ = false;
               break;
            case §?!t§.§,h§:
               this.§#!L§ = true;
               break;
            case §?!t§.§&+§:
               this.§5A§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]2§)
         {
            this.§]2§.dispose();
            this.§]2§ = null;
         }
         this.§^e§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]2§)
         {
            this.§]2§ = new Sprite();
         }
         this.§!!L§ += param1;
         var _loc2_:int = this.§^e§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§^e§[_loc2_].update(this.§!!L§,this.§]2§,this.§&!k§))
            {
               this.§^e§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2!t§();
         this.§^c§();
         return this.§!!L§ < this.§&!`§;
      }
      
      private function §^c§() : void
      {
         var _loc1_:int = §<!?§.§+i§.height;
         var _loc2_:Number = §,!s§.§8;§;
         var _loc3_:Number = §,!s§.§#d§;
         var _loc4_:int = (_loc1_ - this.§0!Q§ * _loc2_) / _loc2_;
         this.§]2§.y = _loc4_ >> 1;
      }
      
      private function §2!t§() : void
      {
         §<!?§.§,=§.color = this.§5A§;
      }
      
      public function clone(param1:§6!I§) : §@x§
      {
         var _loc3_:§?!t§ = null;
         var _loc2_:§@x§ = new §@x§(null,null);
         for each(_loc3_ in this.§^e§)
         {
            _loc2_.§^e§.push(_loc3_.clone());
         }
         _loc2_.§!!L§ = this.§!!L§;
         _loc2_.§&!`§ = this.§&!`§;
         _loc2_.§3!8§ = this.§3!8§;
         _loc2_.§0!Q§ = this.§0!Q§;
         _loc2_.§#!L§ = this.§#!L§;
         _loc2_.§5A§ = this.§5A§;
         _loc2_.§>G§ = this.§>G§;
         _loc2_.§&!k§ = param1;
         return _loc2_;
      }
      
      public function get §+l§() : String
      {
         return this.§>G§;
      }
      
      public function set §+l§(param1:String) : void
      {
         this.§>G§ = param1;
      }
   }
}
