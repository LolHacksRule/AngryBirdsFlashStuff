package §+!d§
{
   import §;!A§.§2v§;
   
   public class §]!N§
   {
      
      public static const §,<§:int = 0;
      
      public static const §!!3§:int = 1;
      
      public static const §'Z§:int = 2;
       
      
      public var §9!&§:Array;
      
      public var §9!n§:int;
      
      public var §;!<§:int;
      
      public var mName:String;
      
      public var §,!^§:String;
      
      public function §]!N§(param1:int, param2:String)
      {
         super();
         this.§;!<§ = param1;
         this.mName = param2;
         this.§9!&§ = new Array();
      }
      
      public function §0`§(param1:§2v§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§9!&§[this.§9!&§.length] = param1;
      }
      
      public function §[!x§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§,!^§ = param1;
         if(this.§;!<§ == §,<§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!&§.length)
            {
               if((this.§9!&§[_loc2_] as §2v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§9!&§[_loc2_] as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§9!&§[_loc2_] as §2v§).§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§9!&§[_loc2_] as §2v§).setComponentState(§"r§.§5!D§);
               }
               _loc2_++;
            }
         }
         if(this.§;!<§ == §'Z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§9!&§.length)
            {
               if((this.§9!&§[_loc2_] as §2v§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§9!&§[_loc2_] as §2v§).§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§9!&§[_loc2_] as §2v§).setComponentState(§"r§.§5!D§);
                  }
                  else if((this.§9!&§[_loc2_] as §2v§).§1!U§ == §"r§.§5!D§)
                  {
                     if(this.§4r§().length < this.§9!n§)
                     {
                        (this.§9!&§[_loc2_] as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§4r§().length >= this.§9!n§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!&§.length)
                  {
                     if((this.§9!&§[_loc3_] as §2v§).§1!U§ == §"r§.§5!D§)
                     {
                        (this.§9!&§[_loc3_] as §2v§).setComponentState(§"r§.§=!Z§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§9!&§.length)
                  {
                     if((this.§9!&§[_loc3_] as §2v§).§1!U§ == §"r§.§=!Z§)
                     {
                        (this.§9!&§[_loc3_] as §2v§).setComponentState(§"r§.§5!D§);
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
         while(_loc2_ < this.§9!&§.length)
         {
            (this.§9!&§[_loc2_] as §2v§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §9!>§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!&§.length)
         {
            (this.§9!&§[_loc1_] as §2v§).setComponentState(§"r§.§5!D§);
            _loc1_++;
         }
      }
      
      public function §^"8§(param1:Number) : void
      {
         this.§9!n§ = param1;
         if(param1 == 1)
         {
            this.§;!<§ = §,<§;
         }
         else
         {
            this.§;!<§ = §'Z§;
         }
      }
      
      public function §?!f§(param1:Array) : void
      {
         this.§9!>§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§[!x§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §4r§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!&§.length)
         {
            if((this.§9!&§[_loc2_] as §2v§).§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§9!&§[_loc2_] as §2v§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
