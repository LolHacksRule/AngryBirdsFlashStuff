package §4!o§
{
   import § ! §.§5!x§;
   import §1T§.§'!c§;
   import §6![§.Sprite;
   
   public class §+y§ extends §0!c§
   {
       
      
      private var §;!T§:String;
      
      private var §,!-§:Boolean;
      
      private var §'!7§:Number;
      
      private var §9W§:int;
      
      public function §+y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§;!T§ = param3;
               while(true)
               {
                  this.§,!-§ = param4;
                  while(!(_loc8_ && param1))
                  {
                     this.§'!7§ = param5;
                     while(!_loc8_)
                     {
                        this.§9W§ = param6;
                        if(_loc7_ || param1)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc7_ || param1));
            
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               §'!c§.§3!f§(this.§;!T§);
            }
            §§goto(addr45);
         }
         addr45:
         false;
         return §§pop();
      }
      
      override public function clone() : §0!c§
      {
         return new §+y§(time,duration,this.§;!T§,this.§,!-§,this.§'!7§,this.§9W§);
      }
   }
}
