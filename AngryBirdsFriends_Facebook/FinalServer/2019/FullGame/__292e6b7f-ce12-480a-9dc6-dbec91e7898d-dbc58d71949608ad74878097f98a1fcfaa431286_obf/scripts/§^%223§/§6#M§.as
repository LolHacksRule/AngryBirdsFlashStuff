package §^"3§
{
   import § "L§.§1"r§;
   
   public class §6#M§
   {
      
      public static const §1"G§:int = 0;
      
      public static const §@!h§:int = 1;
      
      public static const §2!8§:int = 2;
       
      
      public var §=#Q§:Array;
      
      public var §["!§:int;
      
      public var §2"G§:int;
      
      public var §&$"§:String;
      
      public var §#"v§:String;
      
      public function §6#M§(param1:int, param2:String)
      {
         super();
         this.§2"G§ = param1;
         this.§&$"§ = param2;
         this.§=#Q§ = new Array();
      }
      
      public function §1^§(param1:§1"r§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§=#Q§[this.§=#Q§.length] = param1;
      }
      
      public function §-"c§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.§#"v§ = param1;
         var _loc2_:String = param1.toUpperCase();
         if(this.§2"G§ == §1"G§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§=#Q§.length)
            {
               if((this.§=#Q§[_loc3_] as §1"r§).upperCaseName == _loc2_)
               {
                  (this.§=#Q§[_loc3_] as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§=#Q§[_loc3_] as §1"r§).§;!i§ == § #&§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§=#Q§[_loc3_] as §1"r§).setComponentState(§ #&§.§ ! §);
               }
               _loc3_++;
            }
         }
         if(this.§2"G§ == §2!8§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§=#Q§.length)
            {
               if((this.§=#Q§[_loc3_] as §1"r§).upperCaseName == _loc2_)
               {
                  if((this.§=#Q§[_loc3_] as §1"r§).§;!i§ == § #&§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§=#Q§[_loc3_] as §1"r§).setComponentState(§ #&§.§ ! §);
                  }
                  else if((this.§=#Q§[_loc3_] as §1"r§).§;!i§ == § #&§.§ ! §)
                  {
                     if(this.§7!y§().length < this.§["!§)
                     {
                        (this.§=#Q§[_loc3_] as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§7!y§().length >= this.§["!§)
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§=#Q§.length)
                  {
                     if((this.§=#Q§[_loc4_] as §1"r§).§;!i§ == § #&§.§ ! §)
                     {
                        (this.§=#Q§[_loc4_] as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
                     }
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < this.§=#Q§.length)
                  {
                     if((this.§=#Q§[_loc4_] as §1"r§).§;!i§ == § #&§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§=#Q§[_loc4_] as §1"r§).setComponentState(§ #&§.§ ! §);
                     }
                     _loc4_++;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§=#Q§.length)
         {
            (this.§=#Q§[_loc3_] as §1"r§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §#$>§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#Q§.length)
         {
            (this.§=#Q§[_loc1_] as §1"r§).setComponentState(§ #&§.§ ! §);
            _loc1_++;
         }
      }
      
      public function §;!+§(param1:Number) : void
      {
         this.§["!§ = param1;
         if(param1 == 1)
         {
            this.§2"G§ = §1"G§;
         }
         else
         {
            this.§2"G§ = §2!8§;
         }
      }
      
      public function §<"i§(param1:Array) : void
      {
         this.§#$>§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§-"c§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §7!y§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=#Q§.length)
         {
            if((this.§=#Q§[_loc2_] as §1"r§).§;!i§ == § #&§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§=#Q§[_loc2_] as §1"r§).name);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
