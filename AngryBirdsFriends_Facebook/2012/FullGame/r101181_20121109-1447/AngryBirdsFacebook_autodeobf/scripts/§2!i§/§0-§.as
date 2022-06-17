package §2!i§
{
   import §4!e§.§^!D§;
   
   public class §0-§
   {
      
      public static const §[!R§:int = 0;
      
      public static const §1<§:int = 1;
      
      public static const §>W§:int = 2;
       
      
      public var §]!x§:Array;
      
      public var §4C§:int;
      
      public var §%8§:int;
      
      public var mName:String;
      
      public var §&o§:String;
      
      public function §0-§(param1:int, param2:String)
      {
         super();
         this.§%8§ = param1;
         this.mName = param2;
         this.§]!x§ = new Array();
      }
      
      public function §6f§(param1:§^!D§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§]!x§[this.§]!x§.length] = param1;
      }
      
      public function §;!v§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§&o§ = param1;
         if(this.§%8§ == §[!R§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]!x§.length)
            {
               if((this.§]!x§[_loc2_] as §^!D§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§]!x§[_loc2_] as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§]!x§[_loc2_] as §^!D§).§5!L§ == §=!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§]!x§[_loc2_] as §^!D§).setComponentState(§=!&§.§ !s§);
               }
               _loc2_++;
            }
         }
         if(this.§%8§ == §>W§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§]!x§.length)
            {
               if((this.§]!x§[_loc2_] as §^!D§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§]!x§[_loc2_] as §^!D§).§5!L§ == §=!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§]!x§[_loc2_] as §^!D§).setComponentState(§=!&§.§ !s§);
                  }
                  else if((this.§]!x§[_loc2_] as §^!D§).§5!L§ == §=!&§.§ !s§)
                  {
                     if(this.§^0§().length < this.§4C§)
                     {
                        (this.§]!x§[_loc2_] as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§^0§().length >= this.§4C§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]!x§.length)
                  {
                     if((this.§]!x§[_loc3_] as §^!D§).§5!L§ == §=!&§.§ !s§)
                     {
                        (this.§]!x§[_loc3_] as §^!D§).setComponentState(§=!&§.§-N§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§]!x§.length)
                  {
                     if((this.§]!x§[_loc3_] as §^!D§).§5!L§ == §=!&§.§-N§)
                     {
                        (this.§]!x§[_loc3_] as §^!D§).setComponentState(§=!&§.§ !s§);
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
         while(_loc2_ < this.§]!x§.length)
         {
            (this.§]!x§[_loc2_] as §^!D§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §""E§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!x§.length)
         {
            (this.§]!x§[_loc1_] as §^!D§).setComponentState(§=!&§.§ !s§);
            _loc1_++;
         }
      }
      
      public function §1!N§(param1:Number) : void
      {
         this.§4C§ = param1;
         if(param1 == 1)
         {
            this.§%8§ = §[!R§;
         }
         else
         {
            this.§%8§ = §>W§;
         }
      }
      
      public function §4"§(param1:Array) : void
      {
         this.§""E§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§;!v§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §^0§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!x§.length)
         {
            if((this.§]!x§[_loc2_] as §^!D§).§5!L§ == §=!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§]!x§[_loc2_] as §^!D§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
