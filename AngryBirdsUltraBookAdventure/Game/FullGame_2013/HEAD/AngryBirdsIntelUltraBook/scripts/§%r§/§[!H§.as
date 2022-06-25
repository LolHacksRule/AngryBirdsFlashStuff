package §%r§
{
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §[!H§ extends §,!b§
   {
       
      
      private var §8!5§:String;
      
      private var §'a§:Boolean;
      
      private var §@`§:Number;
      
      private var §&_§:int;
      
      public function §[!H§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super(param1,param2);
            loop0:
            do
            {
               this.§8!5§ = param3;
               while(true)
               {
                  this.§'a§ = param4;
                  while(!_loc8_)
                  {
                     this.§@`§ = param5;
                     do
                     {
                        this.§&_§ = param6;
                     }
                     while(!(_loc7_ || param2));
                     
                     if(!(_loc8_ && param3))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc8_);
            
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(super.update(param1,param2,param3));
            loop0:
            do
            {
               §§push(!§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(false);
                     if(!(_loc4_ || param3))
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               §§goto(addr57);
            }
            while(!(_loc4_ || this));
            
            return §§pop();
         }
         SoundEngine.§-!h§(this.§8!5§);
         addr57:
         false;
         return §§pop();
      }
      
      override public function clone() : §,!b§
      {
         return new §[!H§(time,duration,this.§8!5§,this.§'a§,this.§@`§,this.§&_§);
      }
   }
}
