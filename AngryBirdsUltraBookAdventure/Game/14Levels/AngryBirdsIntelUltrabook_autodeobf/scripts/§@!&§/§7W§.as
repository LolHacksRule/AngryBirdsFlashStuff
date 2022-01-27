package §@!&§
{
   import §2y§.§[!i§;
   
   public class §7W§
   {
      
      public static const §,!z§:int = 0;
      
      public static const §!W§:int = 1;
      
      public static const §2!u§:int = 2;
       
      
      public var §3w§:Array;
      
      public var §<!a§:int;
      
      public var §;!L§:int;
      
      public var mName:String;
      
      public var §#!n§:String;
      
      public function §7W§(param1:int, param2:String)
      {
         super();
         this.§;!L§ = param1;
         this.mName = param2;
         this.§3w§ = new Array();
      }
      
      public function § get§(param1:§[!i§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§3w§[this.§3w§.length] = param1;
      }
      
      public function §@G§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§#!n§ = param1;
         if(this.§;!L§ == §,!z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§3w§.length)
            {
               if((this.§3w§[_loc2_] as §[!i§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§3w§[_loc2_] as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§3w§[_loc2_] as §[!i§).§"""§ == §-0§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§3w§[_loc2_] as §[!i§).setComponentState(§-0§.§6![§);
               }
               _loc2_++;
            }
         }
         if(this.§;!L§ == §2!u§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§3w§.length)
            {
               if((this.§3w§[_loc2_] as §[!i§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§3w§[_loc2_] as §[!i§).§"""§ == §-0§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§3w§[_loc2_] as §[!i§).setComponentState(§-0§.§6![§);
                  }
                  else if((this.§3w§[_loc2_] as §[!i§).§"""§ == §-0§.§6![§)
                  {
                     if(this.§^"#§().length < this.§<!a§)
                     {
                        (this.§3w§[_loc2_] as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§^"#§().length >= this.§<!a§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§3w§.length)
                  {
                     if((this.§3w§[_loc3_] as §[!i§).§"""§ == §-0§.§6![§)
                     {
                        (this.§3w§[_loc3_] as §[!i§).setComponentState(§-0§.§6!q§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§3w§.length)
                  {
                     if((this.§3w§[_loc3_] as §[!i§).§"""§ == §-0§.§6!q§)
                     {
                        (this.§3w§[_loc3_] as §[!i§).setComponentState(§-0§.§6![§);
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
         while(_loc2_ < this.§3w§.length)
         {
            (this.§3w§[_loc2_] as §[!i§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §;!Y§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3w§.length)
         {
            (this.§3w§[_loc1_] as §[!i§).setComponentState(§-0§.§6![§);
            _loc1_++;
         }
      }
      
      public function §1!^§(param1:Number) : void
      {
         this.§<!a§ = param1;
         if(param1 == 1)
         {
            this.§;!L§ = §,!z§;
         }
         else
         {
            this.§;!L§ = §2!u§;
         }
      }
      
      public function §,!§(param1:Array) : void
      {
         this.§;!Y§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§@G§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §^"#§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3w§.length)
         {
            if((this.§3w§[_loc2_] as §[!i§).§"""§ == §-0§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§3w§[_loc2_] as §[!i§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
