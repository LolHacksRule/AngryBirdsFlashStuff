package §'!3§
{
   import §'"!§.§+§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §4!i§.§@"#§;
   
   public class §!i§ extends §;!o§
   {
      
      private static var §9P§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9P§ = § !m§;
         }
      }
      
      public function §!i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §9p§ = true;
         }
         loop0:
         do
         {
            §]G§ = true;
            while(true)
            {
               §^J§ = true;
               while(_loc2_ || _loc2_)
               {
                  super(§`!t§.§9r§,§4z§.DEFAULT,this.§'!,§());
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§9P§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            do
            {
               this.updateTextFields();
            }
            while(_loc2_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CLOSE" === _loc4_)
            {
               addr42:
               §§push(0);
               if(_loc6_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  close();
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §@"#§.§,2§.updateTextFields(§29§,"Error_Popup");
         }
      }
   }
}
