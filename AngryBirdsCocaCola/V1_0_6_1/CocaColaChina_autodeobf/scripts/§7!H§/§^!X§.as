package §7!H§
{
   import §8!<§.§29§;
   
   public class §^!X§
   {
      
      public static const §"!D§:int = 0;
      
      public static const §5!;§:int = 1;
      
      public static const §3[§:int = 2;
       
      
      public var §[!c§:Array;
      
      public var §#9§:int;
      
      public var §+!I§:int;
      
      public var mName:String;
      
      public var §#b§:String;
      
      public function §^!X§(param1:int, param2:String)
      {
         super();
         this.§+!I§ = param1;
         this.mName = param2;
         this.§[!c§ = new Array();
      }
      
      public function §1A§(param1:§29§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§[!c§[this.§[!c§.length] = param1;
      }
      
      public function §0!3§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§#b§ = param1;
         if(this.§+!I§ == §"!D§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[!c§.length)
            {
               if((this.§[!c§[_loc2_] as §29§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§[!c§[_loc2_] as §29§).setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§[!c§[_loc2_] as §29§).§1<§ == §`f§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§[!c§[_loc2_] as §29§).setComponentState(§`f§.§'2§);
               }
               _loc2_++;
            }
         }
         if(this.§+!I§ == §3[§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[!c§.length)
            {
               if((this.§[!c§[_loc2_] as §29§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§[!c§[_loc2_] as §29§).§1<§ == §`f§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§[!c§[_loc2_] as §29§).setComponentState(§`f§.§'2§);
                  }
                  else if((this.§[!c§[_loc2_] as §29§).§1<§ == §`f§.§'2§)
                  {
                     if(this.§0=§().length < this.§#9§)
                     {
                        (this.§[!c§[_loc2_] as §29§).setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§0=§().length >= this.§#9§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[!c§.length)
                  {
                     if((this.§[!c§[_loc3_] as §29§).§1<§ == §`f§.§'2§)
                     {
                        (this.§[!c§[_loc3_] as §29§).setComponentState(§`f§.§0m§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[!c§.length)
                  {
                     if((this.§[!c§[_loc3_] as §29§).§1<§ == §`f§.§0m§)
                     {
                        (this.§[!c§[_loc3_] as §29§).setComponentState(§`f§.§'2§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!c§.length)
         {
            (this.§[!c§[_loc2_] as §29§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §3;§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!c§.length)
         {
            (this.§[!c§[_loc1_] as §29§).setComponentState(§`f§.§'2§);
            _loc1_++;
         }
      }
      
      public function §9!#§(param1:Number) : void
      {
         this.§#9§ = param1;
         if(param1 == 1)
         {
            this.§+!I§ = §"!D§;
         }
         else
         {
            this.§+!I§ = §3[§;
         }
      }
      
      public function §3!6§(param1:Array) : void
      {
         this.§3;§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§0!3§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §0=§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!c§.length)
         {
            if((this.§[!c§[_loc2_] as §29§).§1<§ == §`f§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§[!c§[_loc2_] as §29§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
