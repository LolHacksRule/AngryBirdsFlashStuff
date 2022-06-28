package §>!-§
{
   import §]!6§.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const §>Z§:int = 0;
      
      public static const §3&§:int = 1;
      
      public static const §]i§:int = 2;
       
      
      public var §[A§:Array;
      
      public var §2f§:int;
      
      public var §00§:int;
      
      public var mName:String;
      
      public var §'q§:String;
      
      public function UIButtonGroupRovio(param1:int, param2:String)
      {
         super();
         this.§00§ = param1;
         this.mName = param2;
         this.§[A§ = new Array();
      }
      
      public function §#!0§(param1:UIButtonRovio) : void
      {
         if(!param1)
         {
            return;
         }
         this.§[A§[this.§[A§.length] = param1;
      }
      
      public function §9!+§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§'q§ = param1;
         if(this.§00§ == §>Z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[A§.length)
            {
               if((this.§[A§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§[A§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§[A§[_loc2_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§[A§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
               }
               _loc2_++;
            }
         }
         if(this.§00§ == §]i§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§[A§.length)
            {
               if((this.§[A§[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§[A§[_loc2_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§[A§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
                  }
                  else if((this.§[A§[_loc2_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§!!c§)
                  {
                     if(this.§1U§().length < this.§2f§)
                     {
                        (this.§[A§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§1U§().length >= this.§2f§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[A§.length)
                  {
                     if((this.§[A§[_loc3_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§!!c§)
                     {
                        (this.§[A§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§[A§.length)
                  {
                     if((this.§[A§[_loc3_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§1!M§)
                     {
                        (this.§[A§[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
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
         while(_loc2_ < this.§[A§.length)
         {
            (this.§[A§[_loc2_] as UIButtonRovio).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §9!!§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[A§.length)
         {
            (this.§[A§[_loc1_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
            _loc1_++;
         }
      }
      
      public function §+V§(param1:Number) : void
      {
         this.§2f§ = param1;
         if(param1 == 1)
         {
            this.§00§ = §>Z§;
         }
         else
         {
            this.§00§ = §]i§;
         }
      }
      
      public function §4!D§(param1:Array) : void
      {
         this.§9!!§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§9!+§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §1U§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[A§.length)
         {
            if((this.§[A§[_loc2_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§[A§[_loc2_] as UIButtonRovio).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
